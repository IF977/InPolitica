require 'rails_helper'

RSpec.describe Deputado, type: :model do
  context "Validade dos dados do deputado" do
        it "Deputado valido?" do
            deputado = Deputado.new
            deputado.nome = "Maria José"
            deputado.idade = "33"
              
            expect(deputado.valid?).to be_truthy
            
        end
        
         it "Deputado invalido?" do
            deputado = Deputado.new
            deputado.name = "Mri"
            deputado.idade = "4"

            expect(deputado.valid?).to be_falsey
        end
    
    
        

end

RSpec.describe Deputados.idade do
    context "Validade da idade de um deputado" do
        it { is_expected.to be > 21 } 
            deputado = Deputado.new
            idade = deputado.idade
            expect(idade.valid?).to be_truthy
        end

        # ocorre_uma_falha
        it { is_expected.to be < 18 }
            deputado = Deputado.new
            idade = deputado.idade
            expect(idade.valid?).to be_falsey
        
        end
    
end
