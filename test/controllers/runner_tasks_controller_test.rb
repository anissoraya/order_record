require 'test_helper'

class RunnerTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @runner_task = runner_tasks(:one)
  end

  test "should get index" do
    get runner_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_runner_task_url
    assert_response :success
  end

  test "should create runner_task" do
    assert_difference('RunnerTask.count') do
      post runner_tasks_url, params: { runner_task: { order_id: @runner_task.order_id, package_quantity: @runner_task.package_quantity, runner_id: @runner_task.runner_id } }
    end

    assert_redirected_to runner_task_url(RunnerTask.last)
  end

  test "should show runner_task" do
    get runner_task_url(@runner_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_runner_task_url(@runner_task)
    assert_response :success
  end

  test "should update runner_task" do
    patch runner_task_url(@runner_task), params: { runner_task: { order_id: @runner_task.order_id, package_quantity: @runner_task.package_quantity, runner_id: @runner_task.runner_id } }
    assert_redirected_to runner_task_url(@runner_task)
  end

  test "should destroy runner_task" do
    assert_difference('RunnerTask.count', -1) do
      delete runner_task_url(@runner_task)
    end

    assert_redirected_to runner_tasks_url
  end
end
