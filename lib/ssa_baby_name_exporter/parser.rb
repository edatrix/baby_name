module SSABabyNameExporter
  class Parser

    attr_reader :names_lists

    def parse_file(filename)
      data = open_file(filename)
      @names_lists = data.map { |line| build_names_lists(line)  }
    end

    def open_file(filename)
      CSV.open(filename, :headers => [], :header_converters => :symbol)
    end

    def build_names_lists(line)
      SSABabyNameExporter::NamesList.new(:id => line[:id],
                                         :state => line[:state],
                                         :sex => line[:sex],
                                         :year => line[:year],
                                         :name => line[:name],
                                         :count => line[:count])
    end

  end
end