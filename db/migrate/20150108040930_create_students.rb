class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
    add_index :students, :project_id
  end
end
