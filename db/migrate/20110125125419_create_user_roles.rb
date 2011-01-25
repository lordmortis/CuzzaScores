class CreateUserRoles < ActiveRecord::Migration
  def self.up
    create_table :user_roles do |t|
			t.integer :role_id, :null => false
			t.integer :user_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :user_roles
  end
end
