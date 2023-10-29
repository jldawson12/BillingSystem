require_relative "../lib/route_constraints/team_exists"

Rails.application.routes.draw do
  devise_for :users
  scope "/:username", constraints: RouteConstraints::TeamExists do
    get "/", to: "pages#dashboard"
  end
end
