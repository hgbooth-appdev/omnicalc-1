Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action=> "blankSquareForm"})
  get("/square/results", {:controller => "application", :action=> "squareResForm"})

end
