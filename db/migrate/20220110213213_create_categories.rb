class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
