require 'rails_helper'

RSpec.describe Gasto, type: :model do
  it "Gastos validos?" do
    gasto = Gasto.new
    gasto.titulo = "Contas atrasadas"
    gasto.informacao = "Esses gastos são gastos atrasados"
    gasto.valor = "55,89"
    gasto.deputado = "Luigi"
              
    expect(gasto.valid?).to be_truthy

  end
end


=begin
create_table :gastos do |t|
      t.string :titulo
      t.text :informacao
      t.date :data
      t.float :valor
      t.references :deputado, index: true, foreign_key: true

=end