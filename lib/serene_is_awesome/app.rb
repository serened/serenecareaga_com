module SereneIsAwesome
  class App < Sinatra::Base

    get '/' do
      content_type :html

      haml :home
    end

    get '/resume' do
      content_type :html

      haml :resume
    end

    not_found do
      status 404
      haml :doh
    end
  end
end
