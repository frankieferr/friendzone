class FriendzoneCreate<%= singular_table_name.camelize %>Friendships < ActiveRecord::Migration
  def change
    create_table(:<%= singular_table_name %>_friendships) do |t|
      t.integer :<%= singular_table_name %>_id
      t.integer :friend_id
      t.boolean :accepted

      t.timestamps
    end

  end
end