class CreateTweets < ActiveRecord::Migration
  def change #Se creo con el scaffold
    create_table :tweets do |t|
      t.string :user
      t.string :status
      t.string :message

      t.timestamps
    end
  end
end
