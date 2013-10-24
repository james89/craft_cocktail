# == Schema Information
#
# Table name: cocktails
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  recipe      :text
#  flavor      :string(255)
#  liquor      :string(255)
#  photo_url   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cocktail < ActiveRecord::Base

  attr_accessible :name, :recipe, :flavor, :liquor, :description, :photo_url

  has_many :favorites
  has_many :users, :through => :favorites

end
