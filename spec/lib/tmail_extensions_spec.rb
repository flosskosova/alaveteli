# coding: utf-8
# This is a test of the set_content_type monkey patch in
# lib/tmail_extensions.rb

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "when using TMail" do

    before(:each) do
        ActionMailer::Base.deliveries.clear
    end

    it "should load an email with funny MIME settings" do
        # just send it to the holding pen
        InfoRequest.holding_pen_request.incoming_messages.size.should == 0
        receive_incoming_mail("humberside-police-odd-mime-type.email", 'dummy')
        InfoRequest.holding_pen_request.incoming_messages.size.should == 1

        # clear the notification of new message in holding pen
        deliveries = ActionMailer::Base.deliveries
        deliveries.size.should == 1
        deliveries.clear

        incoming_message = InfoRequest.holding_pen_request.incoming_messages[0]

        # This will raise an error if the bug in TMail hasn't been fixed
        incoming_message.get_body_for_html_display()
    end

    it 'should parse multiple to addresses with unqoted display names' do
        mail = TMail::Mail.parse(load_file_fixture('multiple-unquoted-display-names.email'))
        mail.to.should == ["request-66666-caa77777@whatdotheyknow.com", "foi@example.com"]
    end

end

