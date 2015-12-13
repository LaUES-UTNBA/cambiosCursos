class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.text :applicant_comments
      t.text :solicitant_comments
      t.integer :solicitant_id
      t.integer :applicant_id
      t.integer :origin_course_id
      t.integer :wanted_course_id
    end
    add_index :solicitudes, :solicitant_id
    add_index :solicitudes, :applicant_id
    add_index :solicitudes, :origin_course_id
    add_index :solicitudes, :wanted_course_id
  end
end
