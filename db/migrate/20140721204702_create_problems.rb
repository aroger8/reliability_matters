class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :problem_name
      t.text :problem_des

      t.timestamps
    end
  end
end
