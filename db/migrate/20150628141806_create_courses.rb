class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :period
    end

    add_reference :courses, :professor, index: true
    add_reference :courses, :subject, index: true
    add_reference :courses, :office, index: true
  end
end
