class AddDeletedFlagToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :deleted_flag, :boolean, default: false
  end
end
