class CreateOnsenTags < ActiveRecord::Migration[6.1]
  def change
    create_table :onsen_tags do |t|
      t.references :onsen, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
    # 同じタグを２回保存することは出来なくなる
    add_index :onsen_tags, [:onsen_id, :tag_id], unique: true
  end
end
