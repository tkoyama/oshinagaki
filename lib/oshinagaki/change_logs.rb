require 'octokit'

module Oshinagaki
  class ChangeLogs
    attr_reader :from, :to, :client
    def initialize(from, to)
      check_env

      @from = from
      @to = to
      @client = Octokit::Client.new(access_token: ENV['ACCESS_TOKEN'])
    end

    private

    def check_env
      unless ENV['ACCESS_TOKEN']
        raise "please set ENV['ACCESS_TOKEN']."
      end
    end
  end
end
