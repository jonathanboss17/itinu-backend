class CreateTwoDays < ActiveRecord::Migration[5.2]
  def change
    create_table :two_days do |t|
      t.string :title
      t.string :summary
      t.text :day_one
      t.text :day_two
      t.belongs_to :user
      t.belongs_to :destination
      t.belongs_to :genre
      t.timestamps
    end
  end
end
