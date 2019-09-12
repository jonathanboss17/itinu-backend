class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.belongs_to :comment
      t.belongs_to :one_day
      t.belongs_to :two_day
      t.belongs_to :three_day
      t.timestamps
    end
  end
end
