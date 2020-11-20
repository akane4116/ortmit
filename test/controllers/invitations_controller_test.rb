require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get invitations_users_url
    assert_response :success
  end

end
