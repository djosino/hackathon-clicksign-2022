# frozen_string_literal: true

class WriterAbstract
  CONTENT = {
    'breakfast_menu': {
      'food': [
        {
          'name': 'Belgian Waffles',
          'price': '$5.95',
          'description': 'Two of our famous Belgian Waffles ' \
            'with plenty of real maple syrup',
          'calories': 650
        },
        {
          'name': 'Strawberry Belgian Waffles',
          'price': '$7.95',
          'description': 'Light Belgian waffles covered with strawberries ' \
            'and whipped cream',
          'calories': 900
        },
        {
          'name': 'Berry-Berry Belgian Waffles',
          'price': '$8.95',
          'description': 'Belgian waffles covered with assorted fresh ' \
            'berries and whipped cream',
          'calories': 900
        }
      ]
    }
  }.freeze

  def self.writer
    File.write(filename, content)
  end

  def self.filename
    raise NotImplementedError
  end

  def self.content
    raise NotImplementedError
  end
end

class JsonWriter < WriterAbstract
  require 'json'

  def self.filename
    'file.json'
  end

  def self.content
    CONTENT.to_json
  end
end

class XMLWriter < WriterAbstract
  require 'active_support'
  require 'active_support/core_ext'

  def self.filename
    'file.xml'
  end

  def self.content
    CONTENT.to_xml
  end
end

class FileWriter
  STRATEGY = {
    'JSON' => JsonWriter,
    'XML' => XMLWriter
  }.freeze

  def self.writer(strategy)
    STRATEGY[strategy].writer
  end
end

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'XML'

option = gets.chomp

if option.in?(%w[JSON XML])
  FileWriter.writer(option)
end
