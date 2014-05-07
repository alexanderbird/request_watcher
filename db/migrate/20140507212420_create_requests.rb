class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :url
      t.text :body
      t.string :method

      t.timestamps
    end
  end
end
