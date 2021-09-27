require "test_helper"

class CelldbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celldb = celldbs(:one)
  end

  test "should get index" do
    get celldbs_url
    assert_response :success
  end

  test "should get new" do
    get new_celldb_url
    assert_response :success
  end

  test "should create celldb" do
    assert_difference('Celldb.count') do
      post celldbs_url, params: { celldb: { cellnumber: @celldb.cellnumber } }
    end

    assert_redirected_to celldb_url(Celldb.last)
  end

  test "should show celldb" do
    get celldb_url(@celldb)
    assert_response :success
  end

  test "should get edit" do
    get edit_celldb_url(@celldb)
    assert_response :success
  end

  test "should update celldb" do
    patch celldb_url(@celldb), params: { celldb: { cellnumber: @celldb.cellnumber } }
    assert_redirected_to celldb_url(@celldb)
  end

  test "should destroy celldb" do
    assert_difference('Celldb.count', -1) do
      delete celldb_url(@celldb)
    end

    assert_redirected_to celldbs_url
  end
end
