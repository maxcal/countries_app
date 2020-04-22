require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  test "has name" do
    assert Country.new.respond_to?(:name)
  end
end
