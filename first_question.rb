
require_relative 'first_question/file_writer_factory'
require_relative 'first_question/file_writer_base'
require_relative 'first_question/file_writer/writer_text_plain'

base64 = 'data:text/plain;base64,aGFjaGF0aG9u'

writer = FileWriterFactory.new(base64)

# writer.save(filename: 'test.pdf')

writer.save(filename: 'test.txt')

