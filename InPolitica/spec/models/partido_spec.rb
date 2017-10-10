require 'rails_helper'

RSpec.describe Partido, type: :model do
    context "Validade dos dados do partido" do
        it "Partido validos?" do
            partido = Partido.new
            partido.nome = "PSDB"
            partido.total_gasto = "7277.00"
              
            expect(partido.valid?).to be_truthy
        end
        
        
    end

          
          
end

=begin
    raise 'A test exception.'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
else
    # other exception
ensure
    # always executed
endrequire 'rails_helper'

RSpec.describe User, type: :model do
    context "Validade de um Usuario" do
        it "Usuario valido?" do
            user = User.new
            user.name = "James"
            user.cpf = "34597654432"

            expect(user.valid?).to be_truthy
        end

        it "Usuario invalido?" do
            user = User.new
            user.name = "James"

            expect(user.valid?).to be_falsey
        end
    end

    context "Validade de uma descrição de Usuario" do
        it "Descrição completa" do
            user = User.new
            user.name = "James"
            user.cpf = "34597654432"
            user.name = "James"
            user.cpf = "34597654432"
            user.username = "james"
            user.cep = "51170489"
            user.house_number = "51"
            user.complement = "Perto da praça"

            expect(user.descricao_completa).to eql("Nome: James, CPF: 34597654432, Usuário: james, CEP: 51170489, Nº: 51, Complemento: Perto da praça")
        end
    end
end
end
=end

