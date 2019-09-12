class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :picture
      t.belongs_to :one_day
      t.belongs_to :two_day
      t.belongs_to :three_day
      t.timestamps
    end
  end
end
