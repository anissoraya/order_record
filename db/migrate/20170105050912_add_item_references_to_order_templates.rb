class AddItemReferencesToOrderTemplates < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_templates, :item, foreign_key: true
  end
end
