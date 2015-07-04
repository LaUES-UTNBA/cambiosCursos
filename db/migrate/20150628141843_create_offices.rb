class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
    end
    add_reference :offices, :regional
  end
end
