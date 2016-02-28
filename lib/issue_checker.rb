require "issue_checker/version"

module IssueChecker
  class IssueChecker
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

    def run
      # TODO implements here.
    end
  end

  # Configuration for IssueChecker
  class Configuration
    attr_accessor :login, :password
  end
end
