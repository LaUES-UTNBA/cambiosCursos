class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :type
    end
    add_reference :subjects, :career
  end
end
