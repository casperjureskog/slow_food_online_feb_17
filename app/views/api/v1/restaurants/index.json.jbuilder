json.entries do
    json.array! @restaurants.each do |restaurant|
        json.id restaurant.id
        json.name restaurant.name
        json.description restaurant.description
    end
end
