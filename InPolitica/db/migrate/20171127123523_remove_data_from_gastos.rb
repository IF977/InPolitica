class RemoveDataFromGastos < ActiveRecord::Migration
  def change
    remove_column :gastos, :data, :date
  end
end
