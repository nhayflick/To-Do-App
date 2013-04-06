class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :project_id
      t.boolean :completed

      t.timestamps
    end
  end
end
