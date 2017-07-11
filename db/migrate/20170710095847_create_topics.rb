Sequel.migration do
  change do

    create_table :topics do
      primary_key :id
      String :name
    end

  end
end
