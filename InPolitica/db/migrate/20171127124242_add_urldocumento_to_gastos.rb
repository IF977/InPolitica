class AddUrldocumentoToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :urldocumento, :string
  end
end
