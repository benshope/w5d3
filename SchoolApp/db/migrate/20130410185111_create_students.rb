class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :team

      t.timestamps
    end
    add_index :students, :team_id
  end
end
