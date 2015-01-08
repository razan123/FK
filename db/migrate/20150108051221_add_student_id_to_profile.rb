class AddStudentIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :student_id, :integer
  end
end
