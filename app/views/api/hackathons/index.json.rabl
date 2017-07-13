object @hackathons

attributes :id, :name, :hold_date


child(:topic) do
  extends 'api/topics/base'
end

child(:speaker) do
  extends 'api/speakers/base'
end
