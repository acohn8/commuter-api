Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :station_lines
  resources :lines
  post '/graphql', to: 'graphql#execute'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end


  namespace :api do
    namespace :v1 do
      resources :stations, param: :station_code
      resources :forecasts, param: :station_code
      get 'stations/lat/:lat/lng/:lng', to: 'stations#sort_stations', constraints: { lat: /\-?\d+(.\d+)?/, lng: /\-?\d+(.\d+)?/, range: /\d+/ }
      get 'forecasts/lat/:lat/lng/:lng', to: 'forecasts#get_forecast', constraints: { lat: /\-?\d+(.\d+)?/, lng: /\-?\d+(.\d+)?/, range: /\d+/ }
    end
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

