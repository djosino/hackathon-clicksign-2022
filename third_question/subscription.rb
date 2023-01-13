# frozen_string_literal: true

class Subscription
  OBSERVERS = [
    Observers::PhoneNotify,
    Observers::EmailNotify
  ]

  attr_accessor :phone_number, :email

  def initialize(phone_number, email)
    @phone_number = phone_number
    @email = email
  end

  def create
    OBSERVERS.each { |observer| observer.create(self) }
  end
end
