class Fees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees do |t|
      t.integer :total_amount
      t.integer :amount_paid
      t.integer :amount_remaining

      t.references :student, foreign_key: true
      t.references :semister, foreign_key: true
      t.timestamps
    end
  end
end
