class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.integer :kind
      t.text :text

      t.timestamps
    end
  end
end
