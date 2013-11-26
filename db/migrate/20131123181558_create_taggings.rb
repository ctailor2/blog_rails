class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :post
      t.references :tag

      t.timestamps
    end
    add_index :taggings, :post_id
    add_index :taggings, :tag_id
  end
end
