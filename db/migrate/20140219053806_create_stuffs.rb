class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
