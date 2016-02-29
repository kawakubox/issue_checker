require "issue_checker/version"
require 'octokit'

module IssueChecker
  class IssueChecker
    attr_reader :octokit

    class << self
      # Set configuration options using block
      def configure
        yield(configuration)
      end

      # Configuration options.
      # If configuration doesn't initialized when it initialized.
      # @return [IssueChecker::Configuration] configuration options
      def configuration
        @configuration ||= Configuration.new
      end
    end

    def initialize
      @octokit = Octokit::Client.new(
        login: IssueChecker.configuration.login,
        password: IssueChecker.configuration.password
      )
    end

    def run
      # TODO implements here.
    end
  end

  # Configuration for IssueChecker
  class Configuration
    attr_accessor :login, :password
  end
end
