class Anecdote < ActiveRecord::Base
belongs_to :chapitre
	validates :sujet, :length => { :minimum => 1 }
	validates :theme , :length => { :maximum => 175 , :minimum => 1 }
	validates :chapitre_id, :length => { :maximum => 4, :minimum => 1 }
end
