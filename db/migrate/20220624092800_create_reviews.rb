class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|

      t.timestamps
      t.references :article, null: false, foreign_key: true
    end
  end
end
