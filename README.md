# Demo of accepts_nested_attributes_for

**Rails 3.2.1**

## Setup

    rails new accepts_nested_attributes_for-demo
    cd accepts_nested_attributes_for-demo
    bundle exec rails g scaffold Post title:string content:text
    bundle exec rails generate model Comment content:text post:references
    bundle exec rake db:create db:migrate


Edit *app/models/post.rb*

    class Post < ActiveRecord::Base
      has_many :comments, :dependent => :destroy
      accepts_nested_attributes_for :comments, allow_destroy: true
    end

### Continue setup…

    bundle exec rake db:seed

Edit *app/views/posts/_form.html.erb* add nested comments fields in the post form

    <%= f.fields_for :comments do |comment_form| %>
      <%= comment_form.text_area :content  %>
    <% end %>

### Start server

    bundle exec rails server
    open http://localhost:3000/posts

Then edit the post comments and submit the form.