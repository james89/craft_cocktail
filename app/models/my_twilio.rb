class MyTwilio

  SID = 'ACc458afd493c7ad55a6da08b2df28f56d'
  TOKEN ='eee531456e7c25281a30b23d07866e89'
  PHONE = '+1 224-803-3822'

  @twilio = Twilio::REST::Client.new SID, TOKEN

  def self.text(number, message)
    @twilio.account.sms.messages.create(
      :from => PHONE,
      :to => '15167297698',
      :body => message
    )
  end

end

