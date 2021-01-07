class CreateAddLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :add_likes do |t|

      t.timestamps
    end
  end
end
