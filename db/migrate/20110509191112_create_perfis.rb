class CreatePerfis < ActiveRecord::Migration
  def self.up
    create_table :perfis do |t|
      t.integer :categoria_id
      t.string :nome
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :perfis
  end
end
