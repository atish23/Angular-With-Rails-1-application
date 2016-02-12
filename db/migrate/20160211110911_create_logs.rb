class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :browser
      t.boolean :mobile
      t.string :os

      t.timestamps null: false
    end
  end
end
