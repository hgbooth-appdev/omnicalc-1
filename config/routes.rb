Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action=> "blankSquareForm"})
end
