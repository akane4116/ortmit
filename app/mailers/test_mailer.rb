class TestMailer < ApplicationMailer
    def send_mail
        mail_info = {
            to: 'hoge.from@test.com',
            from: 'fuga.to@test.com',
            from_display_name: 'Ortmit',
            subject: 'Ortmitです',
            body: 'このメールはOrtmitからのテストメールです'
        }
        
     from = Mail::Adress.new mail_info['from']
     from.display_name = mail_info['from_display_name']
     
     mail(subject: mail_info['subject'], from: from.format, to: mail_info['to']) do |format|
       format.text { render plain: mail_info['body']}
      end
      
    end
end
