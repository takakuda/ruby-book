require 'minitest/autorun'
require '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'kei',
        :age => 20,
        :gender => :male
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'kei',
        age: 20,
        gender: :male
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
