class Semisters < ActiveRecord::Migration[6.0]
  def change
    create_table :semisters do |t|
      t.date :start
      t.date :end
      
      t.timestamps
    end
  end
end
