class Book

    attr_accessor :id, :title, :author, :description

    def self.open_connection
        conn = PG.connect(dbname: "books", user: "postgres", password: "Acad3m1")
    end

    def self.all
        conn = self.open_connection
        sql = "SELECT * FROM book ORDER BY id"
        results = conn.exec(sql)

        books = results.map do |tuple|
            self.hydrate tuple
        end
        return books
    end

    def self.hydrate book_data
        book = Book.new
        book.id = book_data['id']
        book.title = book_data['title']
        book.author = book_data['author']
        book.description = book_data['description']

        return book
    end

end