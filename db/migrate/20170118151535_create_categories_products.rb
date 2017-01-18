class CreateCategoriesProducts < ActiveRecord::Migration[5.0]
   def up
    

    create_table :categories_products, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :product, index: true
    end
  end

  def down
    
    drop_table :categories_products
  end
end
