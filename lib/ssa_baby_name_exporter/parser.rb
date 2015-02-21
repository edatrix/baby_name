module SSABabyNameExporter
  class Parser

    attr_reader :name_line

    def parse_file(filename)
      data = open_file(filename)
      @name_line = data.map { |line| build_name_line(line)  }
    end

    def open_file(filename)
      CSV.open(filename, :headers => [], :header_converters => :symbol)
    end

    def build_name_line(line)
      SSABabyNameExporter::NameLine.new(:id => line[:id],
                                         :state => line[:state],
                                         :sex => line[:sex],
                                         :year => line[:year],
                                         :name => line[:name],
                                         :count => line[:count])
    end

  end
end