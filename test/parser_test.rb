require_relative "./test_helper"

class SSABabyNameExporterTest < Minitest::Test

  def test_it_exists
    assert SSABabyNameExporter::Parser
  end

  # def test_it_parses_txt_file
  #   parser = SSABabyNameExporter::Parser.new
  #   parsed_files = parser.parse_file("./source/AK.TXT")
  #   assert_equal 1, parsed_files.count
  # end

end
