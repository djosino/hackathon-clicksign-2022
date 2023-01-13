# frozen_string_literal: true

require 'base64'
require 'mime/types'

class FileWriterBase
  class InvalidContentType < StandardError; end
  class InvalidContentType < StandardError; end

  def initialize(base64, mime_type)
    @base64 = base64
    @mime_type = mime_type
  end

  def save(filename:)
    validate

    raise NotImplementedError
  end

  def permitted_extensions
    mimes = MIME::Types[@mime_type]
    mimes.first.extensions
  end

  private

  def validate
    raise NotImplementedError
  end

  def validate_filename
    raise InvalidContentType unless @filename

    ext = File.extname(@filename).delete('.')
    raise InvalidContentType unless permitted_extensions.include?(ext)
  end
end
