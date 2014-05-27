class CreateChpaitres < ActiveRecord::Migration
  def change
    create_table :chpaitres do |t|
      t.string :name
      t.integer :numero

      t.timestamps
    end
  end
end
