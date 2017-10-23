require 'rails_helper'

RSpec.describe Estado, type: :model do
    context "Validade dos estados" do
        it "Estado valido?" do
            estado = Estado.new
            estado.nome = "PE"
            estado.total_gasto = "3377.00"
              
            expect(estado.valid?).to be_truthy
            
        end
        
        
    end

          
          
end