class DiaryEntry

  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).ceil
  end

  def scan_for_number
    contents.scan(/07[0-9]{9}/)
  end

end