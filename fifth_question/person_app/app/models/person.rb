class Person < ApplicationRecord
  enum kind: {
    customer: 0,
    provider: 1
  }, _default: 0

  validates :document_number, presence: true

  validate :valid_document_number

  private

  def valid_document_number
    raise NotImplementedError
  end
end
