class Parser

  def parse_file(filename)
    data = open_file(filename)
  end

  def open_file(filename)
    TXT.open(filename, :headers => false)
  end

  def build_names_lists
  end

end