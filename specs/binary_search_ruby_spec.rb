require('minitest/autorun')
require_relative('../binary_search_ruby.rb')

class TestBinarySearch < MiniTest::Test


	def setup()
		@search = BinarySearch.new([0..10])
	end

	def test_init()
		assert_equal([0..10],@search.list())
	end

  def test_binary_search()
    assert_equal(3, @search.binary_search(3))
  end
	
end