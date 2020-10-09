class CreateTacs < ActiveRecord::Migration[6.0]
  def change
    create_table :tacs do |t|
      t.string :numero

      t.timestamps
    end
  end
end
