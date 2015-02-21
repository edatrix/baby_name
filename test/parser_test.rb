require_relative "./test_helper"

class SSABabyNameExporterTest < Minitest::Test

  def test_it_exists
    assert SSABabyNameExporter::Parser
  end

  def test_it_parses_txt_file
    parser = SSABabyNameExporter::Parser.new
    parsed_lines = parser.parse_file("./source/AK.TXT")
    assert_equal 26163, parsed_lines.count
  end

end
