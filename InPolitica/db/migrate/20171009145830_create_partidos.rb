class CreatePartidos < ActiveRecord::Migration
  def change
    create_table :partidos do |t|
      t.string :nome
      t.float :total_gasto

      t.timestamps null: false
    end
  end
end
