class LegalPerson < Person
  validates :document_number, length: { is: 14 }

  private

  def valid_document_number
    return if CNPJ.valid?(document_number)

    errors.add(:document_number, :invalid)
  end
end
