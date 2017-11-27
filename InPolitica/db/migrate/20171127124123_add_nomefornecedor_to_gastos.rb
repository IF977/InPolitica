class AddNomefornecedorToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :nomefornecedor, :string
  end
end
