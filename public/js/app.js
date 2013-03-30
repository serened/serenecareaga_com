function Task(data) {
    this.description = ko.observable(data.description);
    this.complete = ko.observable(data.complete);
    this.created_at = ko.observable(data.created_at);
    this.updated_at = ko.observable(data.updated_at);
    this.id = ko.observable(data.id);
}

function TaskViewModel() {
    var t = this;
    t.tasks = ko.observableArray([]);
    $.getJSON("/tasks", function(raw) {
        var tasks = $.map(raw, function(item) { return new Task(item) });
        self.tasks(tasks);
    });
}
ko.applyBindings(new TaskListViewModel());

t.newTaskDesc = ko.observable();
 t.addTask = function() {
     var newtask = new Task({ description: this.newTaskDesc() });
     $.getJSON("/getdate", function(data){
         newtask.created_at(data.date);
         newtask.updated_at(data.date);
         t.tasks.push(newtask);
         t.saveTask(newtask);
         t.newTaskDesc("");
     })
 };
 t.saveTask = function(task) {
     var t = ko.toJS(task);
     $.ajax({
          url: "http://localhost:9393/tasks",
          type: "POST",
          data: t
     }).done(function(data){
         task.id(data.task.id);
     });
