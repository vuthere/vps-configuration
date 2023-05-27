#!/bin/bash

#                                      ______________.___._______  .____       _____  ____  ___                                      
#                                     /   _____/\__  |   |\      \ |    |     /  _  \ \   \/  /                                      
#                                     \_____  \  /   |   |/   |   \|    |    /  /_\  \ \     /                                       
#                                     /        \ \____   /    |    \    |___/    |    \/     \                                       
#                                    /_______  / / ______\____|__  /_______ \____|__  /___/\  \                                      
#                                            \/  \/              \/        \/       \/      \_/                                      
#                    ____   ______________  _________      ______________________________________________ _____________ 
#                    \   \ /   /\______   \/   _____/     /   _____/\_   _____/\__    ___/\__    ___/    |   \______   \
#                     \   Y   /  |     ___/\_____  \      \_____  \  |    __)_   |    |     |    |  |    |   /|     ___/
#                      \     /   |    |    /        \     /        \ |        \  |    |     |    |  |    |  / |    |    
#                       \___/    |____|   /_______  /    /_______  //_______  /  |____|     |____|  |______/  |____|    
#                                                 \/          \/         \/                                             
#                                                 \/          \/         \/                                          
#                                                (c) 2023 Dexu <help@synlax.ovh>
#
#        <---------------------------------------------------------------------------------------------------------------------------------->    

#########################################################################################
aktualizacja_systemu() {
  sudo apt update && sudo apt upgrade -y
}
#########################################################################################
# Funkcja do instalacji Javy 17
instalacja_java_17() {
  sudo apt install -y openjdk-17-jdk
}

# Funkcja do instalacji Javy 8
instalacja_java_8() {
  sudo apt install -y openjdk-8-jdk
}

usun_java_17() {
  sudo apt purge -y openjdk-17-jdk
}

usun_java_8() {
  sudo apt purge -y openjdk-8-jdk
}

sprawdz_java_i_zainstaluj() {
  if type -p java; then
    java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
    if [[ "$java_version" == 17* ]]; then
      echo "Java $java_version jest już zainstalowana."
    elif [[ "$java_version" == "1.8"* ]]; then
      echo "Java 8 jest już zainstalowana."
    else
      echo "Znaleziono inną wersję Javy: $java_version"
    fi

    echo "Wybierz opcję:"
    echo "1. Instalacja Java 17"
    echo "2. Instalacja Java 8"
    echo "3. Usunięcie Java 17"
    echo "4. Usunięcie Java 8"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-4): " option

    case $option in
      1)
        echo "Instalacja Java 17..."
        instalacja_java_17
        ;;
      2)
        echo "Instalacja Java 8..."
        instalacja_java_8
        ;;
      3)
        echo "Usunięcie Java 17..."
        usun_java_17
        ;;
      4)
        echo "Usunięcie Java 8..."
        usun_java_8
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 4."
        ;;
    esac

  else
    echo "Java nie jest zainstalowana."

    echo "Wybierz opcję:"
    echo "1. Instalacja Java 17"
    echo "2. Instalacja Java 8"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-2): " option

    case $option in
      1)
        echo "Instalacja Java 17..."
        instalacja_java_17
        ;;
      2)
        echo "Instalacja Java 8..."
        instalacja_java_8
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 2."
        ;;
    esac
  fi

  echo "Instalacja Javy zakończona."
}

#########################################################################################
instalacja_node() {
  sudo apt install -y nodejs
}

odinstaluj_node() {
  sudo apt purge -y nodejs
}

sprawdz_node_i_zainstaluj() {
  if type -p node; then
    node_version=$(node -v)
    echo "Node.js $node_version jest już zainstalowany."
    echo "Wybierz opcję:"
    echo "1. Odinstaluj Node.js"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Odinstalowanie Node.js..."
        odinstaluj_node
        echo "Node.js został odinstalowany."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac

  else
    echo "Node.js nie jest zainstalowany."
    echo "Wybierz opcję:"
    echo "1. Instaluj Node.js"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Instalowanie Node.js..."
        instalacja_node
        echo "Instalacja Node.js zakończona."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac
  fi
}


#########################################################################################

instalacja_docker() {
  if command -v docker &>/dev/null; then
    echo "Docker jest już zainstalowany."
    echo "Wersja Docker:"
    docker version --format '{{.Server.Version}}'
  else
    if ! command -v curl &>/dev/null; then
      echo "Curl nie jest zainstalowany. Instalowanie Curl..."
      sudo apt-get update
      sudo apt-get install -y curl
    fi

    echo "Wybierz tryb:"
    echo "1. Instalacja Docker"
    echo "2. Odinstalowanie Docker"
    echo "3. Dodanie użytkownika do grupy Docker"
    echo "4. Usunięcie użytkownika z grupy Docker"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-4): " option

    case $option in
      1)
        echo "Instalacja Docker..."
        read -p "Czy na pewno chcesz zainstalować Docker? (T/n): " confirm
        if [[ $confirm =~ ^[Tt]$ ]]; then
          curl -sSfL get.docker.com | sudo bash
          echo "Docker został zainstalowany."
          echo "Wersja Docker:"
          docker version --format '{{.Server.Version}}'
        else
          echo "Instalacja Docker została anulowana."
        fi
        ;;
      2)
        echo "Odinstalowanie Docker..."
        read -p "Czy na pewno chcesz odinstalować Docker? (T/n): " confirm
        if [[ $confirm =~ ^[Tt]$ ]]; then
          sudo apt-get purge -y docker-ce docker-ce-cli containerd.io
          sudo rm -rf /var/lib/docker
          echo "Docker został odinstalowany."
        else
          echo "Odinstalowanie Docker zostało anulowane."
        fi
        ;;
      3)
        read -p "Podaj nazwę użytkownika, którego chcesz dodać do grupy Docker: " username 
        sudo usermod -aG docker "$username"
        echo "Użytkownik $username został dodany do grupy Docker."
        ;;
      4)
        read -p "Podaj nazwę użytkownika, którego chcesz usunąć z grupy Docker: " username 
        sudo deluser "$username" docker
        echo "Użytkownik $username został usunięty z grupy Docker."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 4."
        ;;
    esac
  fi
}


#########################################################################################

instalacja_bat() {
  if command -v bat &>/dev/null; then
    echo "Bat jest już zainstalowany."
    echo "Wersja Bat:"
    bat --version | awk '{print $2}'

    echo "Wybierz opcję:"
    echo "1. Odinstaluj Bat"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Odinstalowanie Bat..."
        sudo apt remove -y bat
        echo "Bat został odinstalowany."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac
  else
    if ! command -v wget &>/dev/null; then
      echo "Wget nie jest zainstalowany. Instalowanie Wget..."
      sudo apt-get update
      sudo apt-get install -y wget
    fi

    echo "Pobieranie Bat..."
    wget https://github.com/sharkdp/bat/releases/download/v0.23.0/bat-musl_0.23.0_amd64.deb

    echo "Instalacja Bat..."
    sudo dpkg -i bat-musl_0.23.0_amd64.deb

    echo "Aktualizacja systemu..."
    update_system

    echo "Bat został zainstalowany."
    echo "Wersja Bat:"
    bat --version | awk '{print $2}'
  fi
}

#########################################################################################

instalacja_fail2ban() {
  if command -v fail2ban-client &>/dev/null; then
    echo "Fail2ban jest już zainstalowany."
    echo "Wersja Fail2ban:"
    fail2ban-client --version | awk '{print $NF}'

    echo "Wybierz opcję:"
    echo "1. Odinstaluj Fail2ban"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Odinstalowanie Fail2ban..."
        sudo apt remove -y fail2ban
        echo "Fail2ban został odinstalowany."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac
  else
    echo "Instalacja i konfiguracja fail2ban..."
    sudo apt install -y fail2ban

    echo "Fail2ban został zainstalowany."
    echo "Wersja Fail2ban:"
    fail2ban-client --version | awk '{print $NF}'
  fi
}

#########################################################################################

instalacja_nmap() {
  if command -v nmap &>/dev/null; then
    echo "Nmap jest już zainstalowany."
    echo "Wersja Nmap:"
    nmap --version | awk '/Nmap/{print $NF}'

    echo "Wybierz opcję:"
    echo "1. Odinstaluj Nmap"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Odinstalowanie Nmap..."
        sudo apt remove -y nmap
        echo "Nmap został odinstalowany."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac
  else
    echo "Instalacja nmap..."
    sudo apt install -y nmap

    echo "Nmap został zainstalowany."
    echo "Wersja Nmap:"
    nmap --version | awk '/Nmap/{print $NF}'
  fi
}

#########################################################################################

instalacja_nikto() {
  if command -v nikto &>/dev/null; then
    echo "Nikto jest już zainstalowany."
    echo "Wersja Nikto:"
    nikto -v | awk '/Nikto/{print $2}'

    echo "Wybierz opcję:"
    echo "1. Odinstaluj Nikto"
    echo "0. Powrót"
    read -p "Wybierz opcję (0-1): " option

    case $option in
      1)
        echo "Odinstalowanie Nikto..."
        sudo apt remove -y nikto
        echo "Nikto został odinstalowany."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Wybierz opcję od 0 do 1."
        ;;
    esac
  else
    echo "Instalacja nikto..."
    sudo apt install -y nikto

    echo "Nikto został zainstalowany."
    echo "Wersja Nikto:"
    nikto -v | awk '/Nikto/{print $2}'
  fi
}



#########################################################################################

ustawienia_firewall() {
  # Sprawdź, czy ufw jest zainstalowany
  if ! command -v ufw &>/dev/null; then
    echo "Ufw nie jest zainstalowany. Instalowanie ufw..."
    sudo apt install -y ufw
  fi

  # Sprawdź status firewalla ufw
  status=$(sudo ufw status | awk '/Status:/{print $2}')

  if [[ "$status" == "active" ]]; then
    echo "Firewall ufw jest obecnie włączony."
  else
    echo "Firewall ufw jest obecnie wyłączony."
  fi

  # Opcje włączania/wyłączania
  while true; do
    echo "<============== MENU ==============>"
    echo "1. Włącz firewall"
    echo "2. Wyłącz firewall"
    echo "3. Dodaj port"
    echo "4. Usuń port"
    echo "5. Popularne porty"
    echo "6. Sprawdź wszystkie porty"
    echo "7. Powrót"
    echo "<==================================>"
    read -p "Wybierz opcję: " option

    case $option in
      1)
        echo "Włączanie firewalla ufw..."
        sudo ufw enable
        echo "Firewall ufw został włączony."
        ;;
      2)
        echo "Wyłączanie firewalla ufw..."
        sudo ufw disable
        echo "Firewall ufw został wyłączony."
        ;;
      3)
        read -p "Podaj numer portu, który chcesz dodać: " port
        sudo ufw allow $port
        echo "Port $port został dodany."
        ;;
      4)
        read -p "Podaj numer portu, który chcesz usunąć: " port
        sudo ufw delete allow $port
        echo "Port $port został usunięty."
        ;;
      5)
        popularne_porty=("80/tcp" "443/tcp" "22/tcp" "3306/tcp" "8080/tcp")
        echo "Dodawanie popularnych portów..."

        for port in "${popularne_porty[@]}"; do
          sudo ufw allow "$port"
          echo "Port $port został dodany."
        done

        echo "Popularne porty zostały dodane."
        ;;
      6)
        echo "Sprawdzanie wszystkich portów dozwolonych..."
        sudo ufw status numbered
        ;;
      7) break ;;
      *) echo "Nieprawidłowa opcja. Spróbuj ponownie." ;;
    esac
  done

  echo "Konfiguracja firewalla ufw zakończona."
}
#########################################################################################

zmiana_ssh_port() {
  if grep -q "^Port" /etc/ssh/sshd_config; then
    current_port=$(grep "^Port" /etc/ssh/sshd_config | awk '{print $2}')
    echo "Bieżący numer portu SSH: $current_port"
  else
    echo "Bieżący numer portu SSH nie jest skonfigurowany."
  fi

  echo "1. Zmień numer portu SSH"
  echo "2. Zostaw bieżący numer portu SSH"
  echo "0. Powrót"
  read -p "Wybierz opcję: " option

  case $option in
    1)
      read -p "Podaj nowy numer portu SSH: " port
      echo "Zmiana portu SSH na $port"
      sudo sed -i "s/^#Port .*/Port $port/" /etc/ssh/sshd_config
      sudo systemctl restart sshd
      ;;
    2)
      echo "Nie zmieniono numeru portu SSH."
      ;;
    0)
      echo "Powrót..."
      ;;
    *)
      echo "Nieprawidłowa opcja. Anulowano zmianę numeru portu SSH."
      ;;
  esac
}



#########################################################################################
  #https://github.com/angristan/openvpn-install
instalacja_openvpn() {
  if command -v openvpn &>/dev/null; then
    echo "OpenVPN jest już zainstalowane."
    echo "Wersja OpenVPN:"
    openvpn --version | awk '/OpenVPN/{print $2}'
    echo "Lokalizacja pliku ovpn:"
    find / -name "*.ovpn" 2>/dev/null
  else
    echo "1. Instalacja OpenVPN"
    echo "0. Powrót"
    read -p "Wybierz opcję: " option

    case $option in
      1)
        echo "Instalacja OpenVPN..."
        curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
        chmod +x openvpn-install.sh
        AUTO_INSTALL=y ./openvpn-install.sh

        echo "OpenVPN zostało zainstalowane."
        echo "Wersja OpenVPN:"
        openvpn --version | awk '/OpenVPN/{print $2}'
        echo "Lokalizacja pliku ovpn:"
        find / -name "*.ovpn" 2>/dev/null
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Anulowano instalację OpenVPN."
        ;;
    esac
  fi
}



#########################################################################################

instalacja_apache2() {
  if command -v apache2 &>/dev/null; then
    echo "Apache2 jest już zainstalowane."
    echo "Wersja Apache2:"
    apache2 -v | awk '/Apache/{print $3}'
    echo "Lokalizacja plików Apache2:"
    apache2ctl -S | awk '/Main Server/{print $NF}'
  else
    echo "1. Instalacja Apache2"
    echo "2. Odinstaluj Apache2"
    echo "0. Powrót"
    read -p "Wybierz opcję: " option

    case $option in
      1)
        echo "Instalacja Apache2..."
        sudo apt install -y apache2

        echo "Apache2 zostało zainstalowane."
        echo "Wersja Apache2:"
        apache2 -v | awk '/Apache/{print $3}'
        echo "Lokalizacja plików Apache2:"
        echo "var/www/html"
        ;;
      2)
        echo "Odinstalowywanie Apache2..."
        sudo apt purge -y apache2

        echo "Apache2 zostało odinstalowane."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Anulowano."
        ;;
    esac
  fi
}


#########################################################################################

instalacja_phpmyadmin_mysql() {
  if command -v php &>/dev/null && command -v mysql &>/dev/null; then
    echo "PHP i MySQL są już zainstalowane."
    echo "Wersja PHP:"
    php --version | awk '/PHP/{print $2}'
    echo "Wersja MySQL:"
    mysql --version | awk '{print $5}'
  else
    echo "1. Instalacja phpMyAdmin i MySQL"
    echo "2. Odinstaluj phpMyAdmin i MySQL"
    echo "0. Powrót"
    read -p "Wybierz opcję: " option

    case $option in
      1)
        echo "Instalacja phpMyAdmin i MySQL..."
        sudo apt install php mysql-server -y
        sudo apt install php-mbstring php-zip php-gd php-json php-curl -y
        sudo apt install phpmyadmin -y
        sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
        sudo phpenmod mbstring
        sudo systemctl restart apache2
        sudo systemctl start mysql
        sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
        sudo systemctl restart mysql
        sudo sed -i '/^bind-address/s/bind-address.*=.*/bind-address = 127.0.0.1/' /etc/mysql/mysql.conf.d/mysqld.cnf
        sudo systemctl restart mysql
        echo "phpMyAdmin i MySQL zostały zainstalowane i skonfigurowane."
        ;;
      2)
        echo "Odinstalowywanie phpMyAdmin i MySQL..."
        sudo apt purge -y phpmyadmin mysql-server
        sudo apt autoremove -y
        echo "phpMyAdmin i MySQL zostały odinstalowane."
        ;;
      0)
        echo "Powrót..."
        ;;
      *)
        echo "Nieprawidłowa opcja. Anulowano."
        ;;
    esac
  fi
}


#########################################################################################

show_menu_pl() {
  echo "<============== MENU ==============>"
  echo "1. Aktualizacja systemu"
  echo "2. Instalacja Java"
  echo "3. Instalacja Node"
  echo "4. Instalacja Docker"
  echo "5. Instalacja pakietu bat"
  echo "6. Instalacja i konfiguracja fail2ban"
  echo "7. Instalacja nmap"
  echo "8. Instalacja nikto"
  echo "9. Firewall"
  echo "10. Zmiana portu SSH"
  echo "11. Instalacja OpenVPN"
  echo "12. Instalacja Apache2" 
  echo "13. Instalacja PhpMyAdmin + Mysql"                     
  echo "19. Wyjście"
  echo "<==================================>"
}

main_pl() {
  while true; do
    show_menu_pl

    read -p "Wybrano opcję: " option
    echo ""

    case $option in
      1) aktualizacja_systemu ;;
      2) sprawdz_java_i_zainstaluj ;;
      3) sprawdz_node_i_zainstaluj ;;
      4) instalacja_docker ;;
      5) instalacja_bat ;;           
      6) instalacja_fail2ban ;;
      7) instalacja_nmap ;;
      8) instalacja_nikto ;;
      9) ustawienia_firewall ;;
      10) zmiana_ssh_port ;;
      11) instalacja_openvpn ;;
      12) instalacja_apache2 ;;
      13) instalacja_phpmyadmin_mysql ;;                                             
      19) break ;;
      *) echo "Nieprawidłowa opcja. Spróbuj ponownie." ;;
    esac

    echo ""
    read -p "Naciśnij Enter, aby kontynuować..."
    echo ""
  done

  echo "Instalacja zakończona."
}

main_pl


