class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.decimal :height

      t.timestamps
    end
  end
end
