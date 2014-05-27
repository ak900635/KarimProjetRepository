class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.date :period
      t.text :recit
      t.string :lieu
      t.integer :chapitre_id

      t.timestamps
    end
  end
end
