module SSABabyNameExporter
  class NamesList

    attr_accessor :id, :state, :sex, :year, :name, :count

    def initialize(data)
      @id = data[:id]
      @state = data[:state]
      @sex = data[:sex]
      @year = data[:year]
      @name = data[:name]
      @count = data[:count]
    end

  end
end