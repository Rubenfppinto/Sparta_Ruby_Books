class PostController<Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), "..")

    set :view, Proc.new { File.join(root, "views") }

    configure:development do 
        register Sinatra::Reloader
    end

    get "/" do
        @books = Book.all
        erb :'books/index'
    end

    get "/new" do
        erb :'books/new'
    end



end