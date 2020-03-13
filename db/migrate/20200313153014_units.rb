class Units < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name

      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
