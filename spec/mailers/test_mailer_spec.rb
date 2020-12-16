require "rails_helper"

RSpec.describe TestMailer, type: :mailer do
  pending "add some examples to (or delete) #{__FILE__}"

   describe '#semnd_mail'  do
      subject(:mail) do
        describe_class.send_mail.deliver_now
        AvtionMailer::Base.deliveries.last
      end

      context 'when send_email' do
         it { expect(mail.from.first).to eq('hoge.from@test.com')}
         it { expext(mail.to.first).to eq('fuga.to@test.com')}
         it { expext(mail.subject).to eq('Ortmitです')}
         it { expect(mail.subject).to match(/このメールはOrtmitからのテストメールです。/)}
      end
    end
end

