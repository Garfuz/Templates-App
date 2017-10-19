class CreateWebpages < ActiveRecord::Migration[5.1]
  def change
    create_table :webpages do |t|
      t.string :color
      t.string :photo

      t.timestamps
    end
  end
end
