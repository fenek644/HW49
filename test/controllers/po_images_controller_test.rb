require 'test_helper'

class PoImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @po_image = po_images(:one)
  end

  test "should get index" do
    get po_images_url
    assert_response :success
  end

  test "should get new" do
    get new_po_image_url
    assert_response :success
  end

  test "should create po_image" do
    assert_difference('PoImage.count') do
      post po_images_url, params: { po_image: { url: @po_image.url, user_id: @po_image.user_id } }
    end

    assert_redirected_to po_image_url(PoImage.last)
  end

  test "should show po_image" do
    get po_image_url(@po_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_po_image_url(@po_image)
    assert_response :success
  end

  test "should update po_image" do
    patch po_image_url(@po_image), params: { po_image: { url: @po_image.url, user_id: @po_image.user_id } }
    assert_redirected_to po_image_url(@po_image)
  end

  test "should destroy po_image" do
    assert_difference('PoImage.count', -1) do
      delete po_image_url(@po_image)
    end

    assert_redirected_to po_images_url
  end
end
