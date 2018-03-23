class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.date    :event_date
      t.string  :name
      t.timestamps
    end
  end
end
