require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL']||"sqlite3:db/development.db")

class User < ActiveRecord::Base
  has_secure_password
  validates :name,
            presence: true
  validates :account_name,
            presence: true,
            uniqueness: true
  validates :password,
            length: { in: 6..20 }
end
