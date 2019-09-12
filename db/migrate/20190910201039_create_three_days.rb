class CreateThreeDays < ActiveRecord::Migration[5.2]
  def change
    create_table :three_days do |t|
      t.string :title
      t.string :summary
      t.text :day_one
      t.text :day_two
      t.text :day_three
      t.belongs_to :user
      t.belongs_to :destination
      t.belongs_to :genre
      t.timestamps
    end
  end
end
