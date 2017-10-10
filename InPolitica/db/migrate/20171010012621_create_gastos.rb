class CreateGastos < ActiveRecord::Migration
  def change
    create_table :gastos do |t|
      t.string :titulo
      t.text :informacao
      t.date :data
      t.float :valor
      t.references :deputado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
