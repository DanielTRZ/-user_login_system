users = {}

def register(users)
  print "Podaj nazwę użytkownika: "
  username = gets.chomp

  if users.key?(username)
    puts "Użytkownik już istnieje!"
    return
  end

  print "Podaj hasło: "
  password = gets.chomp

  users[username] = password
  puts "Rejestracja zakończona sukcesem ✅"
end

def login(users)
  print "Login: "
  username = gets.chomp

  print "Hasło: "
  password = gets.chomp

  if users[username] == password
    puts "Zalogowano pomyślnie 🎉"
  else
    puts "Nieprawidłowe dane logowania ❌"
  end
end

loop do
  puts "\n1. Rejestracja"
  puts "2. Logowanie"
  puts "3. Wyjście"
  print "Wybierz opcję: "

  choice = gets.to_i

  case choice
  when 1
    register(users)
  when 2
    login(users)
  when 3
    puts "Do zobaczenia 👋"
    break
  else
    puts "Nieprawidłowy wybór!"
  end
end
