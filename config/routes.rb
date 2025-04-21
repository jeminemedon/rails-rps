Rails.application.routes.draw do

  get("/", {:controller => "rbs", :action => "homepage" })
  get("/rock", { :controller => "rbs", :action => "playrock" })
  get("/paper", { :controller => "rbs", :action => "playpaper" })
  get("/scissors", { :controller => "rbs", :action => "playscissors" })
  
  end
  