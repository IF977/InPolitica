class AddValorliquidoToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :valorliquido, :float
  end
end
