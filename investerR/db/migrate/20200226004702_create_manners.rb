class CreateManners < ActiveRecord::Migration[5.2]
  def change
    create_table :manners do |t|
      t.string :method
      t.string :like

      t.timestamps
    end
  end
end
