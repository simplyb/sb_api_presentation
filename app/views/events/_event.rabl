object @event
cache @event
attributes :id, :tweet, :activity_time, :activity_type, :username

child :users, :root => true do
  extends 'users/_user'
end