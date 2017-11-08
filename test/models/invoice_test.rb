require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  setup do
    DatabaseCleaner.clean
    @sl = ShippingLine.create(name: 'APL')
    @c1 = Container.create(code: 'ABC1', shipping_line: @sl, in_time: DateTime.now - 10.days)
    @c2 = Container.create(code: 'ABC2', shipping_line: @sl, in_time: DateTime.now - 14.hours)
  end

  test "calculate method: invoice cannot be calculated after it is finalized" do
    inv = Invoice.new(container: @c1)
    inv.finalize
    assert_not inv.calculate
  end

  test "invoice calculation should be based on number of days" do
    inv = Invoice.new(container: @c1)
    inv.calculate
    assert_equal 10000, inv.amount

    inv = Invoice.new(container: @c2)
    inv.calculate
    assert_equal 0, inv.amount
  end

end
