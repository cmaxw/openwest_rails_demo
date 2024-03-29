class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.references :post, index: true
      t.text :content

      t.timestamps
    end
  end
end
