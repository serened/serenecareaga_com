module SereneIsAwesome
  # Sinatra app to give basic film showing details.
  class App < Sinatra::Base

    get '/' do
      content_type :html

      haml :home
    end

    get '/resume' do
      content_type :html

      haml :resume
    end

    #
    # Error Handling
    #
    not_found do
      { status: 404, message: 'Bummertown. Not found. :/' }
    end
  end
end
