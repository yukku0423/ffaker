# encoding: utf-8

require 'helper'

# Author: wiseleyb<wiseleyb@gmail.com>
class TestPhoneNumberNL < Test::Unit::TestCase
  def setup
    @tester = FFaker::PhoneNumberNL
  end

  def test_mobile_phone_prefix
    assert @tester.mobile_phone_number.start_with?('06')
  end

  def test_phone_prefix
    assert @tester.phone_number.start_with?('0')
  end

  def test_phone_number
    10.times do
      assert_match(/^0([\s\-]*\d){9}$/, @tester.phone_number)
    end
  end

  def test_international_phone_number
    10.times do
      assert_match(/^\+31/, @tester.international_phone_number)
    end
  end
end
