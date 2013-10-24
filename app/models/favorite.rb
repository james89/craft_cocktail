# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  cocktail_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :cocktail

end
