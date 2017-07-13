Sequel.migration do
  change do

    create_table :speakers do
      primary_key :id
      String :fullname
      String :email
      String :password
      Boolean :is_admin
    end

  end
end
