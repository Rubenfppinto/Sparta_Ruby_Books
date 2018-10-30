class Book

    attr_accessor :id, :title, :author, :description

    def self.open_connection
        conn = PG.connect(dbname: "books", user: "postgres", password: "Acad3m1")
    end

end