class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote_text
      t.integer :quote_hash, limit: 8

      t.timestamps
    end
  end
end
