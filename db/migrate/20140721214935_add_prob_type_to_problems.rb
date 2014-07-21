class AddProbTypeToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :prob_type, :string
  end
end
