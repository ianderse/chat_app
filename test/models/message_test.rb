require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "message creation fails without a body" do
    message = Message.new(user_id: 1, subject: 'test')
    refute message.save
  end

  test "message creation fails without a subject" do
    message = Message.new(user_id: 1, body: 'test body')
    refute message.save
  end
end
