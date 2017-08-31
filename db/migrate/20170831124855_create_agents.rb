class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :code
      t.text :skills, array: true, default: []

      t.timestamps
    end
  end
end
