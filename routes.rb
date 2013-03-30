get "/getdate" do
    {:date => DateTime.now}.to_json
end
