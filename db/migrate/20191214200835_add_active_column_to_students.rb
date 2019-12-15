class AddActiveColumnToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, default: false
    #add "active" column to the students table with a default value of false
  end
end
