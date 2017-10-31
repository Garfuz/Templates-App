class AssociateWebpageWithUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :webpages do |t|
      t.belongs_to :user
    end
  end
end
