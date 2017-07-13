Sequel.migration do
  change do

    create_table :hackathons do
      primary_key :id
      foreign_key :topic_id, :topics
      foreign_key :speaker_id, :speakers
      String :name
      Date :hold_date
    end

  end
end
