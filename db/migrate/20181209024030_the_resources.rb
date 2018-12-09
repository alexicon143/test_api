class TheResources < ActiveRecord::Migration[5.2]
  def change
    create_table :the_resources do |t|
      # other devise fields

      t.datetime :last_activity_at
      t.datetime :expired_at
    end
    add_index :the_resources, :last_activity_at
    add_index :the_resources, :expired_at
  end
end
