class Book
  attr_writer :title

  def title
    if @title.split(" ").length > 1
      title_arr = @title.split(" ")
      new_title_arr = []

      title_arr.each do |word|
        word = word.capitalize
        new_title_arr << word
      end

      @title = new_title_arr.join(" ")
    else
      @title.capitalize
    end # if
  end # def
end # class
