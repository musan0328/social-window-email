class InquiryMailer < ApplicationMailer
  def received_email(user)
    @user = user
    mail to: user.email,
         subject: "【#{@user.name}様 イベント参加希望受付通知メール】"
  end
end