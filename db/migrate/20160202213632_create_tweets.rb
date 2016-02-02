class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.date :date
      t.string :username
      t.string :city
      t.string :country
      t.integer :total_words
      t.integer :total_characters
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
