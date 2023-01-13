# frozen_string_literal: true

class OrderNotifierInterface
  def notify(_data)
    raise NotImplemented
  end
end
