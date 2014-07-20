class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.string :name
      t.string :screen_name
      t.text :description
      t.string :profile_image_url
      t.integer :followers_count
      t.integer :friends_count
      t.integer :statuses_count
      t.string :url
      t.integer :twitter_user_id

      t.timestamps
    end
  end
end
