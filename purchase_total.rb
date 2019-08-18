purchases = {}
total = 0.0

while true do
    puts "Введите название товара:"
    product_name = gets.chomp
    break if product_name == "стоп"
    puts "Введите стоимость единицы товара:"
    product_price = gets.to_f
    puts "Введите количество купленного товара:"
    product_num = gets.to_f
    purchases[product_name] = {"price" => product_price, "num" => product_num}
end
puts purchases

puts "Итоговая сумма за каждый товар:"
purchases.each do |name, attributes|
    current_price = attributes["price"]*attributes["num"]
    puts "#{name}: #{current_price}"
    total += current_price
end

puts "Итого: #{total}"