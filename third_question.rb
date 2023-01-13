# frozen_string_literal: true

require_relative 'third_question/newsletter'
require_relative 'third_question/observer'
require_relative 'third_question/observers/phone_notify'
require_relative 'third_question/observers/email_notify'
require_relative 'third_question/subscription'

subscription = Subscription.new('123', 'asdasd@asd.com')
puts 'phone, email'
subscription.create

puts 'email'
subscription.phone_number = nil
subscription.create

puts 'none'
subscription.email = nil
subscription.create
