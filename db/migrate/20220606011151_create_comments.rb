class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :member_id
      t.integer :onsen_id
      t.text :comment_content, null: false
      t.float :rate, null: false, default: 0

      t.timestamps
    end
  end
end
