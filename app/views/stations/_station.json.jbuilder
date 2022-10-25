json.extract! station, :id, :route_name, :station_name, :walking_minutes, :created_at, :updated_at
json.url station_url(station, format: :json)
