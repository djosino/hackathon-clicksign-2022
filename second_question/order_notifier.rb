# frozen_string_literal: true

class OrderNotifier
  def initialize(repository)
    @repository = repository
  end

  def notify(message)
    puts 'Enviando mensagem ...'
    sleep 1
    @repository.notify(message)
  end
end
