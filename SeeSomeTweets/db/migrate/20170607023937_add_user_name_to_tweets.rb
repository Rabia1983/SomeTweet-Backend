class AddUserNameToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :userName, :string
  end
end
