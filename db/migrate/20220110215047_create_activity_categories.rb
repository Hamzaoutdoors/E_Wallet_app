class CreateActivityCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_categories do |t|

      t.timestamps
    end

    add_reference :activity_categories, :activity, foreign_key: true
    add_reference :activity_categories, :category, foregn_key: true
  end
end
