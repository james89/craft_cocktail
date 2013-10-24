# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :password_confirmation
  has_many :favorites
  has_many :cocktails, :through => :favorites

  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  validates :password, :password_confirmation, :presence => true
  validates :password, :password_confirmation, :length => { in: 1..22 }

end
