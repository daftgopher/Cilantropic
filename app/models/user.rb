class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_one :cookbook
end
