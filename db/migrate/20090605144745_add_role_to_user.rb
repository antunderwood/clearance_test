class AddRoleToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string, :default => "user"
    add_index :users, :role
    # make admin user
    admin = User.new
    admin.email = "anthony.underwood@hpa.org.uk"
    admin.password = "tropshop"
    admin.role = "admin"
    admin.email_confirmed = true
    admin.save
  end
  
  def self.down
    remove_column :users, :role
    remove_index :users, :role
    # remove admin user
    User.find_by_email("anthony.underwood@hpa.org.uk").delete
  end
end
