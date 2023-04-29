class CreateStudentControllers < ActiveRecord::Migration[6.1]
  def change
    create_table :student_controllers do |t|

      t.timestamps
    end
  end
end
