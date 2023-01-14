class Provider < Person
  validates :kind, inclusion: { in: %w[provider] }, presence: true

  validates :document_number, length: { is: 14 }

  def initialize(attributes = {})
    super

    self.kind = :provider
  end

  private

  def valid_document_number
    return if CNPJ.valid?(document_number)

    errors.add(:document_number, :invalid)
  end
end
