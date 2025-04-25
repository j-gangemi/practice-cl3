# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".


# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

balances = {
  "ben" => 0,
  "brian" => 0,
  "evan" => 0,
  "anthony" => 0
}

index = 0
loop do
  from_user = blockchain[index]["from_user"]
  to_user = blockchain[index]["to_user"]
  transaction = blockchain[index]["amount"]
if
  from_user == "ben"
  balances["ben"] = balances["ben"] - transaction
end
if
  to_user == "ben"
  balances["ben"] = balances["ben"] + transaction
end
if
  from_user == "brian"
  balances["brian"] = balances["brian"] - transaction
end
if
  to_user == "brian"
  balances["brian"] = balances["brian"] + transaction
end
if
  from_user == "evan"
  balances["evan"] = balances["evan"] - transaction
end
if
  to_user == "evan"
  balances["evan"] = balances["evan"] + transaction
end
if
  from_user == "anthony"
  balances["anthony"] = balances["anthony"] - transaction
end
if
  to_user == "anthony"
  balances["anthony"] = balances["anthony"] + transaction
end
if 
  index == blockchain.length - 1
  break
end
index = index + 1
end

# puts balances["ben"]
# puts balances["brian"]
# puts balances["evan"]
# puts balances["anthony"]

ben_balance = balances["ben"]
brian_balance = balances["brian"]
evan_balance = balances["evan"]
anthony_balance = balances["anthony"]

puts "Ben's KelloggCoin balance is #{ben_balance}"
puts "Brian's KelloggCoin balance is #{brian_balance}"
puts "Evan's KelloggCoin balance is #{evan_balance}"
puts "Anthony's KelloggCoin balance is #{anthony_balance}"

# if
#   blockchain[0]["from_user"] == "ben"
#   puts ben_balance - blockchain[0]["amount"]
# elsif
#   blockchain[1]["from_user"] == "ben"
#   puts ben_balance - blockchain[1]["amount"]
# elsif
#   blockchain[2]["from_user"] == "ben"
#   puts ben_balance - blockchain[2]["amount"]
# elsif
#   blockchain[3]["from_user"] == "ben"
#   puts ben_balance - blockchain[3]["amount"]
# elsif
#   blockchain[4]["from_user"] == "ben"
#   puts ben_balance - blockchain[4]["amount"]
# elsif
#   blockchain[5]["from_user"] == "ben"
#   puts ben_balance - blockchain[5]["amount"]
# elsif
#   blockchain[6]["from_user"] == "ben"
#   puts ben_balance - blockchain[6]["amount"]
# elsif
#   blockchain[0]["from_user"] == "ben"
#   puts ben_balance - blockchain[7]["amount"]
# end


# from_user = blockchain["from_user"]
# puts from_user

# puts blockchain.length