require('minitest/autorun')
require_relative('../binary_search_ruby.rb')

class TestBinarySearch < MiniTest::Test


	def setup()
		@search = BinarySearch.new((0..10).to_a)
    @search2 = BinarySearch.new((0..10000).to_a)
    @search3 = BinarySearch.new((0..100000).to_a)
	end

	def test_init()
		assert_equal((0..10).to_a,@search.list())
	end

  def test_binary_search()
    assert_equal(3, @search.binary_search(3))
  end

  def test_linear_search()
    assert_equal(9, @search.linear_search(9))
  end
	
end