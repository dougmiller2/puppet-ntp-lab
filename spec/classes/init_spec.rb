require 'spec_helper'
describe 'ntp_lab' do
  context 'with default values for all parameters' do
    it { should contain_class('ntp_lab') }
  end
end
