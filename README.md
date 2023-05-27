# Dokumentacja projektu

Witaj w dokumentacji projektu! Ten projekt zawiera zbiór skryptów i narzędzi, które mają na celu ułatwienie różnych zadań związanych z konfiguracją i administracją systemu. Poniżej znajdziesz opisy poszczególnych funkcji i instrukcje dotyczące ich użycia.

## Spis treści

- [Instalacja](#instalacja)
- [Użyte narzędzia](#użyte-narzędzia)
- [Funkcje](#funkcje)
  - [Instalacja Nikto](#instalacja-nikto)
  - [Ustawienia Firewall](#ustawienia-firewall)
  - [Zmiana portu SSH](#zmiana-ssh-port)
  - [Instalacja OpenVPN](#instalacja-openvpn)
  - [Instalacja Apache2](#instalacja-apache2)
  - [Instalacja phpMyAdmin i MySQL](#instalacja-phpmyadmin-mysql)

## Instalacja

Aby rozpocząć korzystanie z tego projektu, wykonaj poniższe kroki:

1. Sklonuj repozytorium na swoje urządzenie:

   ```
   git clone https://github.com/synlax/vps-configuration.git
   ```

2. Przejdź do katalogu projektu:

   ```
   cd vps-configuration
   ```

3. Uruchom skrypty zgodnie z opisem poszczególnych funkcji.

## Użyte narzędzia

Ten projekt wykorzystuje następujące narzędzia i technologie:

- Bash - skrypty są napisane w języku skryptowym Bash, co umożliwia wykonywanie poleceń i automatyzację zadań w systemie operacyjnym.
- GitHub - repozytorium projektu jest hostowane na platformie GitHub, co ułatwia zarządzanie kodem, współpracę i udostępnianie dokumentacji.

## Funkcje

Poniżej znajdują się opisy poszczególnych funkcji dostępnych w tym projekcie.

### Instalacja Nikto

Funkcja `instalacja_nikto` służy do sprawdzania i instalowania narzędzia Nikto, które jest skanerem bezpieczeństwa sieci web. Funkcja sprawdza, czy Nikto jest już zainstalowane, a jeśli nie, wykonuje instalację. Po zakończeniu instalacji wyświetlane są informacje o zainstalowanej wersji Nikto oraz opcje do odinstalowania.

#### Użycie

```bash
instalacja_nikto
```

### Ustawienia Firewall

Funkcja `ustawienia_firewall` pozwala na zarządzanie ustawieniami firewalla przy użyciu narzędzia ufw. Funkcja sprawdza status firewalla ufw i umożliwia włączenie, wyłączenie, dodanie i usunięcie portów oraz wyświetlenie listy dozwolonych portów.

#### Użycie

```bash
ustaw

ienia_firewall
```

### Zmiana portu SSH

Funkcja `zmiana_ssh_port` umożliwia zmianę numeru portu dla usługi SSH na serwerze. Funkcja sprawdza bieżący numer portu SSH i pozwala na jego zmianę lub zachowanie bieżącego numeru portu.

#### Użycie

```bash
zmiana_ssh_port
```

### Instalacja OpenVPN

Funkcja `instalacja_openvpn` służy do instalacji oprogramowania OpenVPN, które jest narzędziem do tworzenia sieci prywatnych wirtualnych (VPN). Funkcja sprawdza, czy OpenVPN jest już zainstalowane, a jeśli nie, umożliwia instalację przy użyciu skryptu openvpn-install.sh. Po zakończeniu instalacji wyświetlane są informacje o zainstalowanej wersji OpenVPN oraz lokalizacji pliku ovpn.

#### Użycie

```bash
instalacja_openvpn
```

### Instalacja Apache2

Funkcja `instalacja_apache2` pozwala na instalację i odinstalowanie serwera Apache2. Funkcja sprawdza, czy Apache2 jest już zainstalowane, a jeśli nie, umożliwia instalację. Po zakończeniu instalacji wyświetlane są informacje o zainstalowanej wersji Apache2 oraz lokalizacji plików Apache2.

#### Użycie

```bash
instalacja_apache2
```

### Instalacja phpMyAdmin i MySQL

Funkcja `instalacja_phpmyadmin_mysql` pozwala na instalację i odinstalowanie phpMyAdmin i serwera MySQL. Funkcja sprawdza, czy PHP i MySQL są już zainstalowane, a jeśli nie, umożliwia instalację. Po zakończeniu instalacji wyświetlane są informacje o zainstalowanych wersjach PHP i MySQL.

#### Użycie

```bash
instalacja_phpmyadmin_mysql
```

To są główne funkcje dostępne w tym projekcie. Każda funkcja ma swoje unikalne zadanie i instrukcje obsługi. Aby korzystać z nich, wystarczy wywołać odpowiednią funkcję z wiersza poleceń.


## Funkcja `aktualizacja_systemu()`

Funkcja `aktualizacja_systemu()` służy do aktualizacji systemu operacyjnego poprzez wykonanie aktualizacji pakietów za pomocą narzędzia `apt` w systemach opartych na Debianie, takich jak Ubuntu.

### Sposób użycia

Aby skorzystać z funkcji `aktualizacja_systemu()`, wykonaj następujące kroki:


# Zarządzanie Javą

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie różnymi wersjami Javy na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_java_17()`

Funkcja `instalacja_java_17()` służy do instalacji Javy w wersji 17 na systemie. Wykorzystuje narzędzie `apt` do instalacji pakietu `openjdk-17-jdk`.

```bash
instalacja_java_17() {
  sudo apt install -y openjdk-17-jdk
}
```

### Funkcja `instalacja_java_8()`

Funkcja `instalacja_java_8()` służy do instalacji Javy w wersji 8 na systemie. Wykorzystuje narzędzie `apt` do instalacji pakietu `openjdk-8-jdk`.

```bash
instalacja_java_8() {
  sudo apt install -y openjdk-8-jdk
}
```

### Funkcja `usun_java_17()`

Funkcja `usun_java_17()` służy do usunięcia zainstalowanej Javy w wersji 17 z systemu. Wykorzystuje narzędzie `apt` do odinstalowania pakietu `openjdk-17-jdk`.

```bash
usun_java_17() {
  sudo apt purge -y openjdk-17-jdk
}
```

### Funkcja `usun_java_8()`

Funkcja `usun_java_8()` służy do usunięcia zainstalowanej Javy w wersji 8 z systemu. Wykorzystuje narzędzie `apt` do odinstalowania pakietu `openjdk-8-jdk`.

```bash
usun_java_8() {
  sudo apt purge -y openjdk-8-jdk
}
```

### Funkcja `sprawdz_java_i_zainstaluj()`

Funkcja `sprawdz_java_i_zainstaluj()` sprawdza, czy Java jest już zainstalowana na systemie. Jeśli tak, wyświetla informacje o zainstalowanej wersji i umożliwia użytkownikowi wybór opcji, takich jak instalacja innej wersji lub usunięcie zainstalowanych wersji. Jeśli Java nie jest zainstalowana, umożliwia użytkownikowi wybór opcji instalacji.

```bash
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
```

## Sposób użycia

Aby skorzystać z funkcji zdefiniowanych w tym skrypcie, wykonaj następujące kroki:

1. Zainstaluj wymagane zależności:
   ```bash
   sudo apt install -y openjdk-17-jdk openjdk-8-jdk
   ```

2. Zdefiniuj funkcje w swoim skrypcie bash lub sh.

3. Wywołaj funkcję `sprawdz_java_i_zainstaluj()` w odpowiednim miejscu swojego skryptu.

```bash
sprawdz_java_i_zainstaluj
```

Po uruchomieniu skryptu zostanie sprawdzone, czy Java jest już zainstalowana, a użytkownik będzie miał możliwość wyboru opcji instalacji lub usunięcia Javy.

Uwaga: W przypadku niektórych systemów, w których `openjdk-17-jdk` i `openjdk-8-jdk` nie są dostępne w domyślnych repozytoriach, może być konieczne skonfigurowanie dodatkowych repozytoriów lub narzędzi do instalacji wymaganych wersji Javy.

# Zarządzanie Node.js

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie Node.js na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_node()`

Funkcja `instalacja_node()` służy do instalacji Node.js na systemie. Wykorzystuje narzędzie `apt` do instalacji pakietu `nodejs`.

```bash
instalacja_node() {
  sudo apt install -y nodejs
}
```

### Funkcja `odinstaluj_node()`

Funkcja `odinstaluj_node()` służy do odinstalowania Node.js z systemu. Wykorzystuje narzędzie `apt` do odinstalowania pakietu `nodejs`.

```bash
odinstaluj_node() {
  sudo apt purge -y nodejs
}
```

### Funkcja `sprawdz_node_i_zainstaluj()`

Funkcja `sprawdz_node_i_zainstaluj()` sprawdza, czy Node.js jest już zainstalowany na systemie. Jeśli tak, wyświetla informacje o zainstalowanej wersji i umożliwia użytkownikowi wybór opcji odinstalowania. Jeśli Node.js nie jest zainstalowany, umożliwia użytkownikowi wybór opcji instalacji.

```bash
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
```

## Sposób użycia

Aby skorzystać z funkcji zdefiniowanych w tym skrypcie, wykonaj następujące kroki:

1. Zainstaluj wymagane zależności:
   ```bash
   sudo apt install -y nodejs
   ```

2. Z

definiuj funkcje w swoim skrypcie bash lub sh.

3. Wywołaj funkcję `sprawdz_node_i_zainstaluj()` w odpowiednim miejscu swojego skryptu.

```bash
sprawdz_node_i_zainstaluj
```

Po uruchomieniu skryptu zostanie sprawdzone, czy Node.js jest już zainstalowany, a użytkownik będzie miał możliwość wyboru opcji instalacji lub odinstalowania Node.js.

# Zarządzanie Dockerem

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie Dockerem na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_docker()`

Funkcja `instalacja_docker()` służy do instalacji Dockera na systemie. Sprawdza najpierw, czy Docker jest już zainstalowany. Jeśli tak, wyświetla informacje o zainstalowanej wersji. Jeśli Docker nie jest zainstalowany, użytkownik ma możliwość wyboru opcji instalacji.

```bash
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
        echo "

Nieprawidłowa opcja. Wybierz opcję od 0 do 4."
        ;;
    esac
  fi
}
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_docker()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_docker()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_docker
```

Po uruchomieniu skryptu zostanie sprawdzone, czy Docker jest już zainstalowany. Jeśli nie, użytkownik będzie miał możliwość wyboru opcji instalacji, odinstalowania, dodania użytkownika do grupy Docker lub usunięcia użytkownika z grupy Docker. W przypadku wybrania opcji instalacji, skrypt automatycznie pobierze i zainstaluje Dockera na systemie.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i zarządzania Dockerem. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać instalacją i konfiguracją Dockera na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.

# Zarządzanie narzędziem Bat

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie narzędziem `bat` na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_bat()`

Funkcja `instalacja_bat()` służy do instalacji narzędzia `bat` na systemie. Sprawdza najpierw, czy `bat` jest już zainstalowany. Jeśli tak, wyświetla informacje o zainstalowanej wersji. Jeśli `bat` nie jest zainstalowany, użytkownik ma możliwość wyboru opcji instalacji.

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_bat()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_bat()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_bat
```

Po uruchomieniu skryptu zostanie sprawdzone, czy narzędzie `bat` jest już zainstalowane. Jeśli nie, użytkownik będzie miał możliwość wyboru opcji instalacji lub odinstalowania. W przypadku wybrania opcji instalacji, skrypt pobierze pakiet `.deb` narzędzia `bat` i zainstaluje go przy użyciu `dpkg`. Dodatkowo, jeśli `wget` nie jest zainstalowany,

 zostanie zainstalowany w celu pobrania pakietu `.deb`. Po zainstalowaniu `bat` zostanie wyświetlona zainstalowana wersja.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i odinstalowania `bat` oraz pobrania pakietu `.deb`. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać instalacją i odinstalowaniem narzędzia `bat` na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.

# Zarządzanie narzędziem Fail2ban

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie narzędziem `fail2ban` na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_fail2ban()`

Funkcja `instalacja_fail2ban()` służy do instalacji narzędzia `fail2ban` na systemie. Sprawdza najpierw, czy `fail2ban` jest już zainstalowany. Jeśli tak, wyświetla informacje o zainstalowanej wersji. Jeśli `fail2ban` nie jest zainstalowany, użytkownik ma możliwość wyboru opcji instalacji.

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_fail2ban()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_fail2ban()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_fail2ban
```

Po uruchomieniu skryptu zostanie sprawdzone, czy narzędzie `fail2ban` jest już zainstalowane. Jeśli nie, zostanie zainstalowane przy użyciu `apt`. Po zakończeniu instalacji zostanie wyświetlona zainstalowana wersja narzędzia.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i odinstalowania `fail2ban`. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać instalacją i odinstalowaniem narzędzia `fail2ban` na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.

# Zarządzanie narzędziem Nmap

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie narzędziem `nmap` na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_nmap()`

Funkcja `instalacja_nmap()` służy do instalacji narzędzia `nmap` na systemie. Sprawdza najpierw, czy `nmap` jest już zainstalowany. Jeśli tak, wyświetla informacje o zainstalowanej wersji. Jeśli `nmap` nie jest zainstalowany, użytkownik ma możliwość wyboru opcji instalacji.

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_nmap()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_nmap()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_nmap
```

Po uruchomieniu skryptu zostanie sprawdzone, czy narzędzie `nmap` jest już zainstalowane. Jeśli nie, zostanie zainstalowane przy użyciu `apt`. Po zakończeniu instalacji zostanie wyświetlona zainstalowana wersja narzędzia.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i odinstalowania `nmap`. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać instalacją i odinstalowaniem narzędzia `nmap` na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.


# Zarządzanie narzędziem Nikto

Ten skrypt zawiera funkcje umożliwiające instalację i zarządzanie narzędziem `nikto` na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `instalacja_nikto()`

Funkcja `instalacja_nikto()` służy do instalacji narzędzia `nikto` na systemie. Sprawdza najpierw, czy `nikto` jest już zainstalowany. Jeśli tak, wyświetla informacje o zainstalowanej wersji. Jeśli `nikto` nie jest zainstalowany, użytkownik ma możliwość wyboru opcji instalacji.

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_nikto()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_nikto()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_nikto
```

Po uruchomieniu skryptu zostanie sprawdzone, czy narzędzie `nikto` jest już zainstalowane. Jeśli nie, zostanie zainstalowane przy użyciu `apt`. Po zakończeniu instalacji zostanie wyświetlona zainstalowana wersja narzędzia.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i odinstalowania `nikto`. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać instalacją i odinstalowaniem narzędzia `nikto` na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.


# Zarządzanie ustawieniami firewalla UFW

Ten skrypt zawiera funkcje umożliwiające konfigurację firewalla UFW (Uncomplicated Firewall) na systemie operacyjnym opartym na Debianie, takim jak Ubuntu.

## Funkcje

### Funkcja `ustawienia_firewall()`

Funkcja `ustawienia_firewall()` służy do konfiguracji firewalla UFW. Sprawdza, czy UFW jest zainstalowany, a jeśli nie, instaluje go. Następnie sprawdza status firewalla i wyświetla odpowiednie komunikaty.

Funkcja udostępnia menu z różnymi opcjami konfiguracji firewalla:

```bash
ustawienia_firewall() {
  if ! command -v ufw &>/dev/null; then
    echo "Ufw nie jest zainstalowany. Instalowanie ufw..."
    sudo apt install -y ufw
  fi

  status=$(sudo ufw status | awk '/Status:/{print $2}')

  if [[ "$status" == "active" ]]; then
    echo "Firewall ufw jest obecnie włączony."
  else
    echo "Firewall ufw jest obecnie wyłączony."
  fi

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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `ustawienia_firewall()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `ustawienia_firewall()` w odpowiednim miejscu swojego skryptu.

```bash
ustawienia_firewall
```

Po uruchomieniu skryptu zostanie sprawdzone, czy UFW jest zainstalowane. Jeśli nie, zostanie zainstalowane przy użyciu `apt`. Następnie zostanie sprawdzony status firewalla i wyświetlone odpowiednie komunikaty.

Następnie użytkownik będzie miał możliwość wyboru różnych opcji konfiguracji firewalla z poziomu menu. Opcje obejmują włączanie i wyłączanie firewalla, dodawanie i usuwanie portów oraz wykonywanie innych operacji.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do instalacji i konfiguracji firewalla UFW. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko! Teraz możesz łatwo zarządzać konfiguracją firewalla UFW na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.

# Zmiana numeru portu SSH

Ta funkcja umożliwia zmianę numeru portu, na którym nasłuchuje usługa SSH na systemie Linux.

## Funkcja

### Funkcja `zmiana_ssh_port()`

Funkcja `zmiana_ssh_port()` pozwala na zmianę numeru portu SSH na systemie. Sprawdza aktualnie skonfigurowany numer portu SSH (jeśli istnieje) i wyświetla go.

Funkcja udostępnia menu z opcjami dotyczącymi zmiany numeru portu SSH:

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `zmiana_ssh_port()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `zmiana_ssh_port()` w odpowiednim miejscu swojego skryptu.

```bash
zmiana_ssh_port
```

Po uruchomieniu skryptu zostanie sprawdzony aktualnie skonfigurowany numer portu SSH, jeśli istnieje, a następnie użytkownik zostanie poproszony o wybór opcji.

- Opcja 1: Umożliwia wprowadzenie nowego numeru portu SSH. Po podaniu nowego numeru portu SSH, skrypt automatycznie dokona zmiany w pliku konfiguracyjnym `/etc/ssh/sshd_config` i zrestartuje usługę SSH.
- Opcja 2: Pozostawia bieżący numer portu SSH bez zmian.
- Opcja 0: Powrót do poprzedniego menu.

**Uwaga:** Skrypt wymaga dostępu do uprawnień administratora (sudo) do modyfikacji pliku konfiguracyjnego SSH oraz restartu usługi SSH. Upewnij się, że uruchamiasz skrypt z odpowiednimi uprawnieniami.

To wszystko

! Teraz możesz łatwo zmieniać numer portu SSH na swoim systemie przy użyciu funkcji udostępnionych w tym skrypcie.


# Instalacja OpenVPN

Ta funkcja umożliwia instalację OpenVPN na systemie Linux. Wykorzystuje ona skrypt instalatora dostępnego w repozytorium [https://github.com/angristan/openvpn-install](https://github.com/angristan/openvpn-install), który zapewnia prosty proces instalacji i konfiguracji OpenVPN.

## Funkcja

### Funkcja `instalacja_openvpn()`

Funkcja `instalacja_openvpn()` sprawdza, czy OpenVPN jest już zainstalowane na systemie. Jeśli tak, wyświetla bieżącą wersję OpenVPN oraz lokalizację pliku .ovpn (konfiguracyjnego).

Jeśli OpenVPN nie jest zainstalowane, funkcja udostępnia menu z opcją instalacji:

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_openvpn()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_openvpn()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_openvpn
```

Po uruchomieniu skryptu sprawdzane jest, czy OpenVPN jest już zainstalowane. Jeśli tak, wyświetlane są informacje o bieżącej wersji OpenVPN oraz lokalizacji pliku .ovpn.

Jeśli OpenVPN nie jest zainstalowane, użytkownik zostanie poproszony o wybór opcji:

- Opcja 1: Instaluje OpenVPN przy użyciu skryptu instalatora z repozytorium [https://github.com/angristan/openvpn-install](https://github.com/angristan/openvpn-install). Skrypt pobierany jest przy użyciu narzędzia `curl` i następnie jest wykony

wany z opcją `AUTO_INSTALL=y` w celu automatycznego procesu instalacji. Po instalacji wyświetlane są informacje o zainstalowanej wersji OpenVPN i lokalizacji pliku .ovpn.

- Opcja 0: Przerywa instalację i powraca do głównego menu.

## Wymagania

- System operacyjny Linux
- Narzędzie `curl` zainstalowane na systemie

**Uwaga:** Funkcja ta korzysta z zewnętrznego skryptu instalatora OpenVPN z repozytorium [https://github.com/angristan/openvpn-install](https://github.com/angristan/openvpn-install), który może podlegać zmianom i aktualizacjom niezależnym od tego dokumentu.

Zaleca się sprawdzenie repozytorium skryptu instalatora OpenVPN dla najnowszej wersji i informacji dotyczących konfiguracji i użytkowania.

## Przykład użycia

Poniżej znajduje się przykład użycia funkcji `instalacja_openvpn()`:

```bash
#!/bin/bash

# Twój kod...

# Wywołanie funkcji instalacji OpenVPN
instalacja_openvpn

# Twój kod...

exit 0
```

Zapewniając prosty interfejs dla instalacji OpenVPN, funkcja `instalacja_openvpn()` ułatwia proces instalacji i konfiguracji OpenVPN na systemie Linux.

# Instalacja Apache2

Ta funkcja umożliwia instalację i odinstalowanie serwera Apache2 na systemie Linux.

## Funkcja

### Funkcja `instalacja_apache2()`

Funkcja `instalacja_apache2()` sprawdza, czy Apache2 jest już zainstalowane na systemie. Jeśli tak, wyświetla bieżącą wersję Apache2 oraz lokalizację plików.

Jeśli Apache2 nie jest zainstalowane, funkcja udostępnia menu z opcjami instalacji i odinstalowania:

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_apache2()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_apache2()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_apache2
```

Po uruchomieniu skryptu sprawdzane jest, czy Apache2 jest już zainstalowane. Jeśli tak, wyświetlane są informacje o bieżącej wersji Apache2 oraz lokalizacji plików.

Jeśli Apache2 nie jest zainstalowane, użytkownik zostanie poproszony o wybór opcji:

- Opcja 1: Instaluje Apache2 przy użyciu narzędzia `apt`. Po instalacji wyświetlane są informacje o zainstalowanej wersji Apache2 oraz lokalizacji plików.

- Opcja 2: Odinstalowuje Apache2 przy użyciu narzędzia `apt purge`.

- Opcja 0: Przerywa instalację i powraca do głównego menu.

## Wymagania

- System oper

acyjny Linux
- Narzędzie `apt` zainstalowane na systemie

## Uwagi

Należy pamiętać, że funkcja `instalacja_apache2()` może wymagać uprawnień administratora do instalacji i odinstalowania pakietów. Upewnij się, że skrypt jest uruchamiany z odpowiednimi uprawnieniami lub dostępem do sudo.

# Instalacja phpMyAdmin i MySQL

Ta funkcja umożliwia instalację i odinstalowanie phpMyAdmin oraz MySQL na systemie Linux.

## Funkcja

### Funkcja `instalacja_phpmyadmin_mysql()`

Funkcja `instalacja_phpmyadmin_mysql()` sprawdza, czy PHP i MySQL są już zainstalowane na systemie. Jeśli tak, wyświetla bieżącą wersję PHP oraz MySQL.

Jeśli PHP i MySQL nie są zainstalowane, funkcja udostępnia menu z opcjami instalacji i odinstalowania:

```bash
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
```

## Jak korzystać

1. Skopiuj powyższy kod funkcji `instalacja_phpmyadmin_mysql()` i wklej go do swojego skryptu Bash lub Sh.

2. Wywołaj funkcję `instalacja_phpmyadmin_mysql()` w odpowiednim miejscu swojego skryptu.

```bash
instalacja_phpmyadmin_mysql
```

Po uruchomieniu skryptu sprawdzane jest, czy PHP i MySQL są już zainstalowane. Jeśli tak, wyświetlane są informacje o bieżącej wersji PHP oraz MySQL.

Jeśli

 PHP i MySQL nie są zainstalowane, wyświetlane jest menu z opcjami instalacji i odinstalowania. Wybierz odpowiednią opcję, podając numer odpowiadający wybranej operacji.

**Uwaga:** Proces instalacji i odinstalowania może wymagać uprawnień administratora. Upewnij się, że skrypt jest uruchamiany z odpowiednimi uprawnieniami lub dostępem do sudo.

To wszystko! Teraz możesz łatwo instalować i odinstalowywać phpMyAdmin oraz MySQL za pomocą funkcji `instalacja_phpmyadmin_mysql()` w swoim skrypcie.