# frozen_string_literal: true

module Repostitories
  class SmsRepository < OrderNotifierInterface
    def self.notify(data)
      puts "Enviado #{data} via SMS"
    end
  end
end
