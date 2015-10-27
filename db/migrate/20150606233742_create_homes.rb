# Inheriting from Active Record Migration
class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.timestamps null: false
    end
  end
end
