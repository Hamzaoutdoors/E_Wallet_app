class CreateActionCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :action_categories do |t|

      t.timestamps
    end

    add_reference :action_categories, :action, foreign_key: true
    add_reference :action_categories, :category, foregn_key: true
  end
end
