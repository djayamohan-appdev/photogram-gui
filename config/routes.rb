Rails.application.routes.draw do

  get("/users", {:controller => "users", :action => "index"})

  get("/users/:path_username", { :controller => "users", :action => "show"})

  get("/photos", {:controller => "photos", :action => "index"})

  get("/photos/:path_id", {:controller => "photos", :action => "show"})

  get("/delete_photo/:toast_id", {:controller => "photos", :action => "baii"})

  get("/insert_photo", { :controller => "photos", :action => "create"})

  get("/update_photo/:modify_id", { :controller => "photos", :action => "update"})

  get("/add_user", { :controller => "users", :action => "add"})

  get("/update_user/:modify_id", { :controller => "users", :action => "update"})

  get("/add_comment", { :controller => "photos", :action => "comment"})

  get("/", { :controller => "users", :action => "index"})
  
end
