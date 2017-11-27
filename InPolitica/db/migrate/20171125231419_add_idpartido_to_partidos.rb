class AddIdpartidoToPartidos < ActiveRecord::Migration
  def change
    add_column :partidos, :idpartido, :string
  end
end
