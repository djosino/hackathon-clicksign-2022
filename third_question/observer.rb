# frozen_string_literal: true

class Observer
  def self.create(_subject)
    raise NotImplementedError
  end
end
