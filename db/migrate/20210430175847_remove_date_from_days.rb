class RemoveDateFromDays < ActiveRecord::Migration[6.1]
  def change
    remove_column :days, :date, :date
  end
end
