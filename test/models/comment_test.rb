require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'summary should return first 50 characters rounded to nearest complete word' do
    comment = Comment.new(body: 'This is a test comment. It should be truncated to the first 50 characters.uncated to the first 50 characters.')
    assert_equal 'This is a test comment. It should be truncated to the first 50 characters.', comment.summary
  end
end
