# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  tittle     :text
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user

	def self.search(search)
	  if search
	    find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
  
end
