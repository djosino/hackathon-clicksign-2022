# frozen_string_literal: true

module FileWriter
  class WriterTextPlain < FileWriterBase
    def save(filename:)
      @filename = filename

      validate

      File.open(filename, 'w') do |f|
        f.write content
      end
    end

    private

    def validate
      validate_filename
    end

    def content
      encoded = @base64.split(/,/)[1]
      Base64.decode64(encoded)
    end
  end
end
