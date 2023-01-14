# frozen_string_literal: true

require 'json'
require 'active_support'
require 'active_support/core_ext'

class FileWriter
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
    raise NotImplementedError
  end
end

class JsonWriter < FileWriter
  def self.writer
    File.write('file.json', content)
  end

  def self.content
    CONTENT.to_json
  end
end

class XMLWriter < FileWriter
  def self.writer
    File.write('file.xml', content)
  end

  def self.content
    CONTENT.to_xml
  end
end

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'XML'

option = gets.chomp

case option
when 'JSON'
  JsonWriter.writer
when 'XML'
  XMLWriter.writer
end
