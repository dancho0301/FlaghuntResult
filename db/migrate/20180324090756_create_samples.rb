class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.date :edate
      t.integer :num

      t.timestamps
    end
  end
end
