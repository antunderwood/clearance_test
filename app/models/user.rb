class User < ActiveRecord::Base
  include Roleify::RoleifyableModel
  include Clearance::User
end
