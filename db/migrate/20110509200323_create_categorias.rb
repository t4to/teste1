class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.integer :admin_id
      t.string :descricao
      t.integer :subcat_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
