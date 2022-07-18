# 1. definir produtos e seus respectivos valores {'milk'=> 10}
store_items = { "milk" => 1, "bread" => 3, "cheese" => 2, "eggs" => 4 }

# 2. mostrar na tela msg de bem vindo à loja
puts 'welcome to tatchi\'s store'

# 3. representar um carrinho vazio cart = []
cart = []

# 4. printar um inventario com os produtos
store_items.each { |product, price| puts "#{product} - R$#{price}" }


# 5. adicionar itens ao carrinho
new_item = nil

while new_item != 'checkout'
    puts 'what do you want to add yo yout cart? Or enter [checkout] to exit...'
    new_item = gets.chomp
    if store_items.key?(new_item)
        cart << new_item
        puts " you have added #{cart.join(', ')} in your cart"
    else
        puts 'item unavailable'
    end
end

# 6. calcular o preco total dos itens do carrinho

total = 0
cart.each do |product|
   total += store_items[product]
end

# 7. printar valor total na tela.

puts "You need to pay R$#{total}"