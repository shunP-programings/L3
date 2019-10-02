class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :messeage
      t.datetime :tdate

      t.timestamps
    end
  end
end
