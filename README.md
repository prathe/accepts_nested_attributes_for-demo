# Demo of accepts_nested_attributes_for

**Rails 3.2.1**

    rails new accepts_nested_attributes_for-demo
    cd accepts_nested_attributes_for-demo
    bundle exec rails g scaffold Post title:string content:text
    bundle exec rails generate model Comment content:text post:references
    bundle exec rake db:create db:migrate


*app/models/post.rb*
    class Post < ActiveRecord::Base
      has_many :comments, :dependent => :destroy
      accepts_nested_attributes_for :comments, allow_destroy: true
    end

