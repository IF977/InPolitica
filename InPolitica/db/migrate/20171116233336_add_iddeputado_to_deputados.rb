class AddIddeputadoToDeputados < ActiveRecord::Migration
  def change
    add_column :deputados, :iddeputado, :string
  end
end
