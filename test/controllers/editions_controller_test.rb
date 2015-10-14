require 'test_helper'

class EditionsControllerTest < ActionController::TestCase
  setup do
    @edition = editions(:one)
    @book = @edition.book
  end

  test "should get index" do
    get :index, book_id: @book.id
    assert_response :success
    assert_not_nil assigns(:editions)
  end

  test "should get new" do
    get :new, book_id: @book.id
    assert_response :success
  end

  test "should create edition" do
    assert_difference('Edition.count') do
      post :create, edition: { edition_type: 'thus', pub_year: 1933 }, book_id: @book.id
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show edition" do
    get :show, id: @edition, book_id: @book.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edition, book_id: @book.id
    assert_response :success
  end

  test "should update edition" do
    patch :update, id: @edition, edition: { edition_type: 'true', pub_year: 1955 }, book_id: @book.id
    assert_redirected_to book_edition_path(assigns(:book), assigns(:edition))
  end

  test "should destroy edition" do
    assert_difference('Edition.count', -1) do
      delete :destroy, id: @edition, book_id: @book.id
    end

    assert_redirected_to book_editions_path(assigns(:book))
  end
end
