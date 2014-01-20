require 'test_helper'

class NoticeMailTest < ActionMailer::TestCase
  test "sendmail_notification" do
    mail = NoticeMail.sendmail_notification
    assert_equal "Sendmail notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
