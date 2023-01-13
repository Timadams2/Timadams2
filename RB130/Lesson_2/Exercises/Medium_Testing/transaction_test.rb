require 'minitest/autorun'
require_relative 'transaction'

class TestTransaction < Minitest::Test
  def setup
    @transaction = Transaction.new(50)
  end
  
  def test_prompt_for_payment_method
    input = StringIO.new('50\n')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(50, @transaction.amount_paid)
  end
  
end