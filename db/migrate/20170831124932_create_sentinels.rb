class CreateSentinels < ActiveRecord::Migration[5.1]
  def change
    create_table :sentinels do |t|
      t.string :name
      t.string :code
      t.text :skills, array: true, default: []
      t.string :group

      t.timestamps
    end
  end
end
