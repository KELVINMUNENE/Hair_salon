class Client
    attr_reader(:description, :stylist_id)

    define_method(:initialize) do |attributes|
      @description = attributes.fetch(:description)
      @stylist_id = attributes.fetch(:stylist_id)
    end


    define_singleton_method(:all) do
      returned_clients = DB.exec("SELECT * FROM clients;")
      clients = []
      returned_clients.each() do |client|
        description = client.fetch("description")
        stylist_id = client.fetch("stylist_id").to_i() # The information comes out of the database as a string.
        clients.push(Client.new({:description => description, :stylist_id => stylist_id}))
      end
      clients
    end
end
