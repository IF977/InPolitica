class AddDataToGastos < ActiveRecord::Migration
  def change
    add_column :gastos, :data, :date
  end
end
