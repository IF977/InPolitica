require 'rails_helper'
require 'support/factory_bot'
require 'deputado'

describe Deputado do
  deputado = Deputado.new
  context "Validade dos dados do deputado" do
      
      it "deputado.idade is valid" do
            expect(deputado.idade).to be > 21;
        end
      
        it "Deputado valido?" do
            expect(deputado.valid?).to be_truthy
        end
        
         it "Deputado invalido?" do
            expect(deputado.valid?).to be_falsey
        end
    end

    context "Idade de um deputado" do
        it "deputado.idade is valid" do
            expect(deputado.idade).to be > 21;
        end
    end
end
