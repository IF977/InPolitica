class AddSiglaToPartidos < ActiveRecord::Migration
  def change
    add_column :partidos, :sigla, :string
  end
end
