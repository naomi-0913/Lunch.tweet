class AddPlaceToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :place, :text
  end
end
