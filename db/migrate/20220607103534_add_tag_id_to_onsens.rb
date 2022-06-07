class AddTagIdToOnsens < ActiveRecord::Migration[6.1]
  def change
    add_column :onsens, :tag_id, :integer
  end
end
