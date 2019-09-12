class CreateOneDays < ActiveRecord::Migration[5.2]
  def change
    create_table :one_days do |t|
      t.string :title
      t.string :summary
      t.text :day_one
      t.belongs_to :user 
      t.belongs_to :destination
      t.belongs_to :genre

      t.timestamps
    end
  end
end
