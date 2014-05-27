class Anecdote < ActiveRecord::Base
 validates :sujet, :length => { :maximum => 100 , :minimum => 1 }
  validates :theme , :length => { :maximum => 140 , :minimum => 1}
end
