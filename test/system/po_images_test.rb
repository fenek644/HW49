require "application_system_test_case"

class PoImagesTest < ApplicationSystemTestCase
  setup do
    @po_image = po_images(:one)
  end

  test "visiting the index" do
    visit po_images_url
    assert_selector "h1", text: "Po Images"
  end

  test "creating a Po image" do
    visit po_images_url
    click_on "New Po Image"

    fill_in "Url", with: @po_image.url
    fill_in "User", with: @po_image.user_id
    click_on "Create Po image"

    assert_text "Po image was successfully created"
    click_on "Back"
  end

  test "updating a Po image" do
    visit po_images_url
    click_on "Edit", match: :first

    fill_in "Url", with: @po_image.url
    fill_in "User", with: @po_image.user_id
    click_on "Update Po image"

    assert_text "Po image was successfully updated"
    click_on "Back"
  end

  test "destroying a Po image" do
    visit po_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Po image was successfully destroyed"
  end
end
