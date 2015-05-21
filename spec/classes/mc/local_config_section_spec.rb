require 'spec_helper'

describe 'sendmail::mc::local_config_section' do

  context 'with defaults' do
    it {
      should contain_concat__fragment('sendmail_mc-local_config_header') \
              .with_content(/^LOCAL_CONFIG/) \
              .with_target('sendmail.mc') \
              .with_order('80') \
              .that_notifies('Class[sendmail::makeall]')
    }
  end
end