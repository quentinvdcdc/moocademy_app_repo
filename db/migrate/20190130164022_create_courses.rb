class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
    add_reference :users, :course, foreign_key: true, optional: true
  end
end
