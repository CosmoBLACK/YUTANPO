class CreateOnsenTags < ActiveRecord::Migration[6.1]
  def change
    create_table :onsen_tags do |t|
      t.integer :onsen_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
