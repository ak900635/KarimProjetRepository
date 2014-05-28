class Personne < ActiveRecord::Base
	belongs_to :scene
	validates :nom, :length => { :maximum => 175 , :minimum => 1 }
	validates :scene_id, :length => { :maximum => 4}
	default_scope -> { order('created_at DESC') }
end
