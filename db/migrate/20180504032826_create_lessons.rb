class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :tutor, foreign_key: { to_table: :users}
      t.references :category, foreign_key: true
      t.string :description
      t.integer :price_hr

      t.timestamps
    end
  end
end
