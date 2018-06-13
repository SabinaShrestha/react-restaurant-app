menus = ["Breakfast", "Lunch", "Dinner", "Dessert"]

menus.each do |m|
  Menu.create(
    option: m
  )
end

40.times do
  Item.create(
    title: Faker::Food.dish,
    price: Faker::Commerce.price.to_f,
    menu_id: Faker::Number.non_zero_digit
  )
end
