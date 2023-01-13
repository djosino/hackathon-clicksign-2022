# frozen_string_literal: true

class Action
  VALID_TYPES = %w[TIPO1 TIPO2 TIPO3 TIPO4 TIPO5 TIPO6].freeze

  def initialize(type)
    @type = type
  end

  # caso seja realmente só uma string
  def call
    return unless @type.in?(VALID_TYPES)

    puts "Executa ação #{@type}"
  end

  # caso seja um segundo método
  def call_method
    case @type
    when 'TIPO1'
      puts 'Executa ação TIPO1'
    when 'TIPO2'
      puts 'Executa ação TIPO2'
    when 'TIPO3'
      puts 'Executa ação TIPO3'
    when 'TIPO4'
      puts 'Executa ação TIPO4'
    when 'TIPO5'
      puts 'Executa ação TIPO5'
    when 'TIPO6'
      puts 'Executa ação TIPO6'
    end
  end
end
