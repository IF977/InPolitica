class AddEstadoToDeputado < ActiveRecord::Migration
  def change
    add_reference :deputados, :estado, index: true, foreign_key: true
  end
end
