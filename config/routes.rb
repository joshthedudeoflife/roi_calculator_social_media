RoiCalculatorSocialMedia::Application.routes.draw do
  root :to => "home#index"
  resources :rois
end
