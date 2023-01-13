
require_relative 'second_question/order_notifier'
require_relative 'second_question/order_notifier_interface'
require_relative 'second_question/repositories/whatsapp_repository'
require_relative 'second_question/repositories/sms_repository'

OrderNotifier.new(Repostitories::SmsRepository).notify('Hackathon')
