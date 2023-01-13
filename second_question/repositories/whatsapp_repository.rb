# frozen_string_literal: true

module Repostitories
  class WhatsappRepository < OrderNotifierInterface
    def self.notify(data)
      puts "Enviado #{data} via Whatsapp"
    end
  end
end
