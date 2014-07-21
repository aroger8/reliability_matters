class AddUserNameToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :user_name, :string
  end
end
