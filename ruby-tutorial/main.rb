#!/usr/bin/env ruby

class MegaAnfitriao
    attr_accessor :nomes

    # Criando o objeto
    def initialize(nomes = "Mundo")
        @nomes = nomes
    end

    # Dizer olá a todos
    def diz_ola
        if @nomes.nil?
            puts "..."
        elsif @nomes.respond_to?("each")
            # @nomes é uma lista de algum tipo,
            # então podemos iterar!
            @nomes.each do |nome|
                puts "Olá, #{nome}"
            end
        else
            puts "Olá, #{nomes}"
        end
    end

    # Dizer adeus a todos
    def diz_adeus
        if @nomes.nil?
            puts "..."
        elsif @nomes.respond_to?("join")
            # Juntar os elementos à lista
            # usando vírgula como o separador
            puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
        else
            puts "Adeus #{@nomes}. Volte em breve."
        end
    end
end


if __FILE__ == $0
    mg = MegaAnfitriao.new
    mg.diz_ola
    mg.diz_adeus

    # ALTERANDO O NOME PARA "Maycol"
    mg.nomes = "Maycol"
    mg.diz_ola
    mg.diz_adeus

    # ALTERANDO O NOME PARA VETOR DE NOMES
    mg.nomes = ["Maycol", "Anna", "Carolina", "Matheus", "Yasmin", "Julia"]
    mg.diz_ola
    mg.diz_adeus

    # ALTERANDO PARA nil
    mg.nomes = nil
    mg.diz_ola
    mg.diz_adeus
end
