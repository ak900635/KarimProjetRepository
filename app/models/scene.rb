class Scene < ActiveRecord::Base
 validates :period, :length => { :maximum => 100 , :minimum => 1 }
 validates :recit , :length => { :maximum => 140 , :minimum => 1}
 validates :lieu , :length => { :maximum => 140 , :minimum => 1}
end
