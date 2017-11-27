class AddIddocumentoToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :iddocumento, :string
  end
end
