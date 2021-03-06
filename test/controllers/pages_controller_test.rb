# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_path
    assert_response :success
  end

  test 'should get about' do
    get '/about'
    assert_response :success
  end

  test 'should get blog' do
    get '/blog'
    assert_response :success
  end

  test 'should get contact' do
    get '/contact'
    assert_response :success
  end
end
