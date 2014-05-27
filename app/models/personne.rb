class Personne < ActiveRecord::Base
	validates :nom, :length => { :maximum => 175 , :minimum => 1 }
  
end
