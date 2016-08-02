class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :stripe_user_id
      t.boolean :active
      t.references :user

      t.timestamps
    end
  end
end
