class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
			t.string :name, :null => false
      t.timestamps
    end

		admin = Role.new(:name => "admin")
		admin.save
		
		proctor = Role.new(:name => "proctor")
		proctor.save
  end

  def self.down
    drop_table :roles
  end
end
