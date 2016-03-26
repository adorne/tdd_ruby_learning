class Book
  attr_writer :title

  def title
    exc_words = ["and", "in", "the", "of", "a", "an"]

    if @title.split(" ").length > 1
      title_arr = @title.split(" ")
      new_title_arr = []

      title_arr.each do |word|
        if !(exc_words.include? word)
          word = word.capitalize
          new_title_arr << word
        else
          new_title_arr << word
        end
      end

      first = new_title_arr.shift
      first = first.capitalize
      new_title_arr = new_title_arr.unshift(first)

      @title = new_title_arr.join(" ")
    else
      @title.capitalize
    end # if
  end # def
end # class
