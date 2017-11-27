class AddIdlegislaturaToDeputados < ActiveRecord::Migration
  def change
    add_column :deputados, :idlegislatura, :string
  end
end
