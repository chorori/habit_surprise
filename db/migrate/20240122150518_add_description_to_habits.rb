class AddDescriptionToHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :description, :text
  end
end
