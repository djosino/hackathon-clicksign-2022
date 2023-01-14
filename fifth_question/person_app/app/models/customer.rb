class Customer < Person
  validates :kind, inclusion: { in: %w[customer] }, presence: true

  validates :document_number, length: { is: 11 }

  private

  def valid_document_number
    return if CPF.valid?(document_number)

    errors.add(:document_number, :invalid)
  end
end
