class AddSexToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :sex, :string
  end
end
