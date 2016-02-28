require 'spec_helper'

describe IssueChecker do
  subject { IssueChecker::IssueChecker.new }

  it { is_expected.to respond_to :run }

  it 'has a version number' do
    expect(IssueChecker::VERSION).not_to be nil
  end

  describe 'configure' do
    before do
      IssueChecker::IssueChecker.configure do |config|
        config.login = 'hogehoge'
        config.password = 'p@ssw0rd'
      end
    end

    subject { IssueChecker::IssueChecker.configuration }
    it 'set configuration options' do
      expect(subject.login).to eq 'hogehoge'
      expect(subject.password).to eq 'p@ssw0rd'
    end
  end
end
