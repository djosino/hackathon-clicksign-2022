# frozen_string_literal: true

require 'mime/types'
require 'titleize'

class FileWriterFactory
  class InvalidMimeType < StandardError; end

  def self.new(base64)
    mime_type = mime_type(base64)
    klass = Object.const_get("FileWriter::Writer#{mime_klass(mime_type)}")
    klass.new(base64, mime_type)
  end

  private

  def self.mime_type(base64)
    search_mime = base64.match(/(data:)(.*);/)
    return search_mime[2] if search_mime

    raise InvalidMimeType
  end

  def self.mime_klass(mime_type)
    mime_type.split(/\//).map(&:titleize).join
  end
end
