require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe :conekta_tests do
  it "puts hello" do
    c = Conekta::Charge.get("52bf93a0cfc26cc6b9000071")
    puts c
    puts c.id
    puts c.amount
    puts c.payment_method
  end
end