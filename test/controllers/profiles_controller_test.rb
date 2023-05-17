require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get show' do
    get profile_url(@user)
    assert_response :success
  end

  test 'should get edit' do
    get edit_profile_url(@user)
    assert_response :success
  end

  test 'should update user' do
    patch profile_url(@user), params: { user: { first_name: 'New', last_name: 'Name' } }
    assert_redirected_to profile_url(@user)
    @user.reload
    assert_equal 'New', @user.first_name
    assert_equal 'Name', @user.last_name
  end
end
