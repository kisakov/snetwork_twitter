class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :twitter_account, index: true
      t.string :profile_image_url
      t.text :text
      t.integer :twitter_id
      t.text :raw_twitt
      t.integer :retweet_count
      t.string :from_user

      t.timestamps
    end
  end
end
