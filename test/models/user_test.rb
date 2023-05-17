require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'full_name should return first and last name' do
    user = User.new(first_name: 'John', last_name: 'Doe')
    assert_equal 'John Doe', user.full_name
  end
end
