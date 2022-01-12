require "test_helper"

class JobPosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_po = job_pos(:one)
  end

  test "should get index" do
    get job_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_job_po_url
    assert_response :success
  end

  test "should create job_po" do
    assert_difference("JobPo.count") do
      post job_pos_url, params: { job_po: { companyName: @job_po.companyName, ids: @job_po.ids, title: @job_po.title, url: @job_po.url } }
    end

    assert_redirected_to job_po_url(JobPo.last)
  end

  test "should show job_po" do
    get job_po_url(@job_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_po_url(@job_po)
    assert_response :success
  end

  test "should update job_po" do
    patch job_po_url(@job_po), params: { job_po: { companyName: @job_po.companyName, ids: @job_po.ids, title: @job_po.title, url: @job_po.url } }
    assert_redirected_to job_po_url(@job_po)
  end

  test "should destroy job_po" do
    assert_difference("JobPo.count", -1) do
      delete job_po_url(@job_po)
    end

    assert_redirected_to job_pos_url
  end
end
