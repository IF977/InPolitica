class Deputado < ActiveRecord::Base
    belongs_to :estado
    belongs_to :partido
        
    has_many :gastos
end
