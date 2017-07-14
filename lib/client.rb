class Client
    attr_reader(:description, :stylist_id)

    define_method(:initialize) do |attributes|
      @description = attributes.fetch(:description)
      @stylist_id = attributes.fetch(:stylist_id)
    end
end
