class Post < ActiveRecord::Base
 resourcify
  include Authority::Abilities
 
 belongs_to :category
  belongs_to :user
end
