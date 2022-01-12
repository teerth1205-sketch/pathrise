require "application_system_test_case"

class JobPosTest < ApplicationSystemTestCase
  setup do
    @job_po = job_pos(:one)
  end

  test "visiting the index" do
    visit job_pos_url
    assert_selector "h1", text: "Job pos"
  end

  test "should create job po" do
    visit job_pos_url
    click_on "New job po"

    fill_in "Companyname", with: @job_po.companyName
    fill_in "Ids", with: @job_po.ids
    fill_in "Title", with: @job_po.title
    fill_in "Url", with: @job_po.url
    click_on "Create Job po"

    assert_text "Job po was successfully created"
    click_on "Back"
  end

  test "should update Job po" do
    visit job_po_url(@job_po)
    click_on "Edit this job po", match: :first

    fill_in "Companyname", with: @job_po.companyName
    fill_in "Ids", with: @job_po.ids
    fill_in "Title", with: @job_po.title
    fill_in "Url", with: @job_po.url
    click_on "Update Job po"

    assert_text "Job po was successfully updated"
    click_on "Back"
  end

  test "should destroy Job po" do
    visit job_po_url(@job_po)
    click_on "Destroy this job po", match: :first

    assert_text "Job po was successfully destroyed"
  end
end
