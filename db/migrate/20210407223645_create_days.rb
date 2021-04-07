class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.date :date
      t.has_many :tasks

      t.timestamps
    end
  end
end
