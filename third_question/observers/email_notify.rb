# frozen_string_literal: true

module Observers
  class EmailNotify < Observer
    def self.create(subscription)
      return unless subscription.email

      NEWSLETTER.each do |news|
        puts "notify #{subscription.email} with #{news}"
      end
    end
  end
end
