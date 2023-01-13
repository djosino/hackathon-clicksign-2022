# frozen_string_literal: true

module Observers
  class PhoneNotify < Observer
    def self.create(subscription)
      return unless subscription.phone_number

      NEWSLETTER.each do |news|
        puts "notify #{subscription.phone_number} with #{news}"
      end
    end
  end
end
