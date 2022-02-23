class UsersController < ApplicationController

  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc})

    render({ :template => "user_templates/index.html.erb"})
  end

  def show
  url_username = params.fetch("path_username")

  matching_usernames = User.where({ :username => url_username })

  @the_user = matching_usernames.first

  render({ :template => "user_templates/show.html.erb"})
  end

  def update
    user_id = params.fetch("modify_id")
    new_username = params.fetch("query_username")
    matching_user = User.where({:id => user_id})
    the_user = matching_user.first

    the_user.username = new_username
    the_user.save
    redirect_to("/users/" + new_username)
  end

  def add
    list_of_users = User.all.order({ :id => :desc})
    last_user_id = list_of_users.first.id
    new_username = params.fetch("query_username")
    new_user = User.new
    new_user.id = last_user_id.to_i + 1
    new_user.username = new_username

    new_user.save
    redirect_to("/users/" + new_username)
  end
  
end