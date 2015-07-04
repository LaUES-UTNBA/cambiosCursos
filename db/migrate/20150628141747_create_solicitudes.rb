class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.text :comments
      t.integer :solicitant_id
      t.integer :applicant_id
    end
    add_reference :solicitudes, :course, index: true
    add_index :solicitudes, :solicitant_id
    add_index :solicitudes, :applicant_id
  end
end
