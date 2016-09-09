class User < ApplicationRecord
  authenticates_with_sorcery!

has_many :samples, inverse_of: :user
  validates_confirmation_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
