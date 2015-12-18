class CsvReader
  def initialize()
    @books_in_stock = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end
  
  def total_value_in_stock
  end
  
  def number_of_each_isbn
  end
end