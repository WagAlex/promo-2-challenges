class Post < ActiveRecord::Migration
  def change
    create_table : do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end