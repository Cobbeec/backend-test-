class AddDayListToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :dayList, :string
  end
end
