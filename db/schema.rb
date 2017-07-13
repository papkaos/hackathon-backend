Sequel.migration do
  change do
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:speakers) do
      primary_key :id
      column :fullname, "varchar(255)"
      column :email, "varchar(255)"
      column :password, "varchar(255)"
      column :is_admin, "Boolean"
    end
    
    create_table(:topics) do
      primary_key :id
      column :name, "varchar(255)"
    end
    
    create_table(:hackathons) do
      primary_key :id
      foreign_key :topic_id, :topics
      foreign_key :speaker_id, :speakers
      column :name, "varchar(255)"
      column :hold_date, "date"
    end
  end
end
              Sequel.migration do
                change do
                  self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20170710095847_create_topics.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20170713082911_create_speakers.rb')"
self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20170713113609_create_hackathons.rb')"
                end
              end
