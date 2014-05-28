class Scene < ActiveRecord::Base
	belongs_to :chapitre
	validates :recit, :length => { :maximum => 175 , :minimum => 1 }
	validates :lieu, :length => { :maximum => 175 , :minimum => 1 }
	validates :chapitre_id, :length => { :maximum => 4, :minimum => 1 }
    has_many :personnes
    default_scope -> { order('id ASC') }
end
