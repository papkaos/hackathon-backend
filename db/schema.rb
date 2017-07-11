Sequel.migration do
  change do
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:topics) do
      primary_key :id
      column :name, "varchar(255)"
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20170710095847_create_topics.rb')"
  end
end
