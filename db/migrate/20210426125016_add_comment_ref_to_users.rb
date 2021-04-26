class AddCommentRefToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table(:comments) do |t|
      t.references :user, null: false, foreign_key: true, default: 2
    end
  end
end
