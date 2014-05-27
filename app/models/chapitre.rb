class Chapitre < ActiveRecord::Base
  validates :name, :length => { :maximum => 100 , :minimum => 1 }
  validates :numero , :length => { :maximum => 140 , :minimum => 1}
end
