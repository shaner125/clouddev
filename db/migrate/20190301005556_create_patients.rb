class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :date_of_birth
      t.string :address
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
