class CreateWeightRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :weight_records do |t|
      t.references :member, null: false, foreign_key: true
      t.date :date
      t.decimal :weight
      t.text :comment

      t.timestamps
    end
  end
end
