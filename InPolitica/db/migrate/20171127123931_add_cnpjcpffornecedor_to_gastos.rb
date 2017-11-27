class AddCnpjcpffornecedorToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :cnpjcpffornecedor, :string
  end
end
