class CreatePatientnotes < ActiveRecord::Migration
  def change
    create_table :patientnotes do |t|
      t.string :date
      t.string :title
      t.text :content
      t.belongs_to :patient, index: true
      t.timestamps
    end
  end
end