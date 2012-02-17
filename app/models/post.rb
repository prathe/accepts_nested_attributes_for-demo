class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :comments, allow_destroy: true
end
