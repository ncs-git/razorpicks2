require 'test_helper'

class WeeksControllerTest < ActionController::TestCase
  setup do
    @week = weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week" do
    assert_difference('Week.count') do
      post :create, week: { completed: @week.completed, current: @week.current, due_by: @week.due_by, end: @week.end, locked: @week.locked, name: @week.name, season_id: @week.season_id, start: @week.start }
    end

    assert_redirected_to week_path(assigns(:week))
  end

  test "should show week" do
    get :show, id: @week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @week
    assert_response :success
  end

  test "should update week" do
    patch :update, id: @week, week: { completed: @week.completed, current: @week.current, due_by: @week.due_by, end: @week.end, locked: @week.locked, name: @week.name, season_id: @week.season_id, start: @week.start }
    assert_redirected_to week_path(assigns(:week))
  end

  test "should destroy week" do
    assert_difference('Week.count', -1) do
      delete :destroy, id: @week
    end

    assert_redirected_to weeks_path
  end
end
