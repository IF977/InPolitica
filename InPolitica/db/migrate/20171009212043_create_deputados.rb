class CreateDeputados < ActiveRecord::Migration
  def change
    create_table :deputados do |t|
      t.string :nome
      t.integer :idade
      t.string :url_foto

      t.timestamps null: false
    end
  end
end
