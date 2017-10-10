class AddPartidoToDeputado < ActiveRecord::Migration
  def change
    add_reference :deputados, :partido, index: true, foreign_key: true
  end
end
