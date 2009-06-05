class UserRoleGenerator < Rails::Generator::Base
require File.expand_path(File.dirname(__FILE__) + "/lib/insert_commands.rb")
  def manifest
    record do |m|
      m.insert_into "app/models/user.rb",
                    "include Roleify::RoleifyableModel"
      m.migration_template "migrations/add_role_to_user.rb",
                           'db/migrate',
                           :migration_file_name => "add_role_to_user"

    end
  end
end

