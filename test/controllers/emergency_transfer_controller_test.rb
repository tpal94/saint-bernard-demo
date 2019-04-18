require 'test_helper'

class EmergencyTransferControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get emergency_transfers_url
    assert_response :success
  end

  test "should get show" do
    get emergency_transfer_url(1)
    assert_response :success
  end

  # test "the truth" do
  #   assert true
  # end
end
