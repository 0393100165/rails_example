class ChangeDetailsFromReview < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews,:details, :content
  end
end
