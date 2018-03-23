class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer     :training_id
      t.string      :name
      t.timestamps
    end
  end
end
