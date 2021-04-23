class AddArticleRefToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table(:articles) do |t|
      t.references :user, null: false, foreign_key: true, default: 2
    end
  end
end
