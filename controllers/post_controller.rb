class PostController<Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), "..")

    set :view, Proc.new { File.join(root, "views") }

    configure:development do 
        register Sinatra::Reloader
    end

    get "/" do
        erb :'books/index'
    end





end