class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :member_id
      t.integer :onsen_id
      t.text :comment_content
      t.float :rate

      t.timestamps
    end
  end
end
