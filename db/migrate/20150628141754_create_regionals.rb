class CreateRegionals < ActiveRecord::Migration
  def change
    create_table :regionals do |t|
      t.string :name
      t.string :short_name
    end
  end
end
