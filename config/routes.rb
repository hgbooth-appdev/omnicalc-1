Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action=> "squareForm"})
  get("/square/results", {:controller => "application", :action=> "squareRes"})
  get("/square_root/new", {:controller => "application", :action=> "squareRootForm"})
  get("/square_root/results", {:controller => "application", :action=> "squareRootRes"})
  get("/payment/new", {:controller => "application", :action=> "paymentForm"})
  get("/payment/results", {:controller => "application", :action=> "paymentRes"})
  get("/random/new", {:controller => "application", :action=> "randomForm"})
  get("/random/results", {:controller => "application", :action=> "randomRes"})
 
end
