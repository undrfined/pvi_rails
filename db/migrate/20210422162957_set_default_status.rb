class SetDefaultStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :comments, :status, :string, default: "public"
    change_column :articles, :status, :string, default: "public"
  end
end
