class Attendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.date :arrival
      t.date :departure

      t.references :unit, foreign_key: true
      t.references :student, foreign_key: true
      t.timestamps
    end
  end
end
