#!/bin/sh
# Локальный установщик
# Автор слива @MiKillCrafter
#
# Вы скачали скрипт с сайта scriptgates.ru
# Подписывайтесь на нас в Telegram:
# https://t.me/scriptgates
#
# Пожалуйста, не редактируйте этот файл!
# Спасибо за честность!
#
# Письмо создателю: (просьба не удалять)
# Да, муд@к, я знаю что ты это прочитаешь, не$ер банить было.
# Как появится возможность, обязательно декодирую GPL тебе на зло.
# И 9ю а то и даже 10ю версию сразу. Хотя, толку. Всё одно и тоже, только цифра другая!
# Ибо очень жадный стал после того как украл (Aviras project).
# Все нормальные люди когда продают продукт, поддерживают его исправляя фиксы,
# а ты пытаешься грести с ничём неповинных людей деньги, и меняешь только цифру в версии. АХТУНГ!
# Никаких инноваций. Не думай что ты Apple, и что у тебя получится делать деньги из воздуха.
# Запомни: ТЫ НИЧТО! Этим красивым чейндж-логом подтереться можешь!
# Поверь, я не сливал установщик. Нет! Я собирался делать чисто для себя установщик без сети. Слил кое кто из тима.
# Но тут я резко получил бан и я связался с первоисточником слива, так скажем, отомстить :)

# Цвета
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)

MKC_txt() {
	printf "\033[1;32m$@\033[0m\n"
}

alert() {
  MKC_txt "${yellow}Обращение к скачавшим:"
  MKC_txt "Призываю всех скачавших данный слив, не поддерживать (создателя) и ничего у него не покупать!"
  MKC_txt "Вы никогда не получите обновлений а тем более в них исправлений! НИКОГДА!"
  MKC_txt
  MKC_txt "Если у вас есть желание помочь (₽) с декодированием, нажмите 4 а затем ENTER"
}

# Define
h="/"
panel="GamePL"
version="v8.5"
Directory="install"
serverPatch="server"
gamesPath="games"
install="/var/GamePL" #	Папка установки сервера
ScriptGates_ZIP="$h/mkc/$Directory/$serverPatch/gamepl.zip"
ScriptGates_SQL="$h/mkc/$Directory/$serverPatch/gamepl.sql"
ScriptGates_GMS="$h/mkc/$Directory/$gamesPath"
ScriptGates_SteamCMD="$h/mkc/$Directory/$serverPatch/steamcmd_linux.tar.gz" # http://media.steampowered.com/client/steamcmd_linux.tar.gz
ScriptGates_IONCube="$h/mkc/$Directory/$serverPatch/ioncube_loaders_lin_x86-64.zip" # http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip
ScriptGates_DOTDEB="$h/mkc/$Directory/$serverPatch/dotdeb.gpg"  # http://www.dotdeb.org/dotdeb.gpg

# GTA
ScriptGates_GTA_Multi_Theft_Auto="$ScriptGates_GMS/mta.zip"
ScriptGates_GTA_San_Andreas_03DL="$ScriptGates_GMS/samp03dl.zip"
ScriptGates_GTA_San_Andreas_037="$ScriptGates_GMS/samp037.zip"
ScriptGates_GTA_Criminal_Russia="$ScriptGates_GMS/crmp.zip"
ScriptGates_GTA_Alien_City_San_Anderius="$ScriptGates_GMS/anmp.zip"
ScriptGates_GTA_RenderWare="$ScriptGates_GMS/rwmp.zip"
ScriptGates_GTA_Vice_Multiplayer="$ScriptGates_GMS/vmp.zip"

ScriptGates_Garrys_Mod="$ScriptGates_GMS/gm.zip"                       			# 2.23 GB
ScriptGates_Day_Of_Defeat_Source="$ScriptGates_GMS/dods.zip"           			# 798.7 MB
ScriptGates_Half_Life_Deathmatch="$ScriptGates_GMS/hldm.zip"            		# 305.1 MB
ScriptGates_RUST="$ScriptGates_GMS/rust.zip"
ScriptGates_Killing_Floor="$ScriptGates_GMS/kf.zip"
ScriptGates_Gostown6_Multiplayer="$ScriptGates_GMS/g6mp.zip"

# Minecraft
ScriptGates_mc_stable="$ScriptGates_GMS/start.jar" # craftbukkit-1.13.2

# Counter Strike
ScriptGates_Counter_Strike_CSGO="$ScriptGates_GMS/csgo.zip"            			# 8.45 GB
ScriptGates_Counter_Strike="$ScriptGates_GMS/cs.zip"                    		# 397.7 MB
ScriptGates_Counter_Strike_v34="$ScriptGates_GMS/cssold.zip"           			# 615.3 MB
ScriptGates_Counter_Strike_Source="$ScriptGates_GMS/css.zip"           			# 1.12 GB

# Большие файлы с прямыми ссылками на другой сервак:
ScriptGates_Left_4_Dead_2="$ScriptGates_GMS/l4d2.zip"                  			# 4.42 GB
ScriptGates_Team_Fortress_2="$ScriptGates_GMS/tf2.zip"                 			# 3.54 GB

install_minecraft_list() {
  mkdir -p /host/servers/mine/
	cp $ScriptGates_mc_stable /host/servers/mine/
	install_games
}
install_games() {
	check_os_update
	clear
	MKC_txt "Список доступных игр"
	MKC_txt "- ${green}1${red}  -  ♦ Установить SteamCMD [На новой машине обязательно!]"
	MKC_txt "- ${red}2${green}  -  ♦ Counter-Strike: 1.6 Build [REHLDS]"
	MKC_txt "- ${red}3${green}  -  ♦ Counter-Strike: Source"
	MKC_txt "- ${red}4${green}  -  ♦ Counter-Strike: Source [v3.4]"
	MKC_txt "- ${red}5${green}  -  ♦ Counter-Strike: GO"
	MKC_txt "- ${red}6${green}  -  ♦ Half-Life: Deathmatch"
	MKC_txt "- ${red}7${green}  -  ♦ Day of Defeat: Source"
	MKC_txt "- ${red}8${green}  -  ♦ Team Fortress 2"
	MKC_txt "- ${red}9${green}  -  ♦ Garry's Mod"
	MKC_txt "- ${red}10${green} -  ♦ Left 4 Dead 2"
	MKC_txt "- ${red}11${green} -  ♦ Minecraft Stable [v.1.13.2]"
	MKC_txt "- ${red}12${green} -  ♦ Killing Floor"
	MKC_txt "- ${red}13${green} -  ♦ GTA: Multi Theft Auto [v.1.5.6]"
	MKC_txt "- ${red}14${green} -  ♦ GTA: San Andreas Multiplayer [v.0.3.7]"
	MKC_txt "- ${red}15${green} -  ♦ GTA: Criminal Russia MP [v.0.3.e]"
	MKC_txt "- ${red}16${green} -  ♦ GTA: RenderWare Multiplayer"
	MKC_txt "- ${red}17${green} -  ♦ GTA: Anderius Multiplayer"
	MKC_txt "- ${red}18${green} -  ♦ GTA: Gostown 6 Multiplayer"
	MKC_txt "- ${red}19${green} -  ♦ GTA: Vice Multiplayer"
	MKC_txt "- ${red}20${green} -  ♦ GTA: San Andreas Multiplayer [v.0.3DL]"
	MKC_txt "- ${red}21${green} -  ♦ Rust"
	MKC_txt "- ${green}0${red}  -  ♦ В главное меню <<<"
	MKC_txt
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1)
			mkdir -p -p /host/
			mkdir -p -p /host/servers
			mkdir -p -p /host/servers/cmd
			tar -cxvzf $ScriptGates_SteamCMD /host/servers/cmd/
			install_games
		;;
		2)
			mkdir -p /host/servers/cs/
			unzip $ScriptGates_Counter_Strike /host/servers/cs/
			install_games
		;;
		3)
			mkdir -p /host/servers/css/
			unzip $ScriptGates_Counter_Strike_Source -d /host/servers/css/
			install_games
		;;
		4)
			mkdir -p /host/servers/css34/
			unzip $ScriptGates_Counter_Strike_v34 -d /host/servers/css34/
			install_games
		;;
		5)
			mkdir -p /host/servers/csgo/
			unzip $ScriptGates_Counter_Strike_CSGO -d /host/servers/csgo/
			install_games
		;;
		6)
			mkdir -p /host/servers/hldm/
			unzip $ScriptGates_Half_Life_Deathmatch -d /host/servers/hldm/
			install_games
		;;
		7)
			mkdir -p /host/servers/dods/
			unzip $ScriptGates_Day_Of_Defeat_Source -d /host/servers/dods/
			install_games
		;;
		8)
			mkdir -p /host/servers/tf2/
			unzip $ScriptGates_Team_Fortress_2 -d /host/servers/tf2/
			install_games
		;;
		9)
			mkdir -p /host/servers/gm/
			unzip $ScriptGates_Garrys_Mod -d /host/servers/gm/
			install_games
		;;
		10)
			mkdir -p /host/servers/l4d2/
			unzip $ScriptGates_Left_4_Dead_2 -d /host/servers/l4d2/
			install_games
		;;
		11)
			install_minecraft_list
		;;
		12)
			mkdir -p /host/servers/kf/
			unzip $ScriptGates_Killing_Floor -d /host/servers/kf/
			install_games
		;;
		13)
			mkdir -p /host/servers/mta/
			unzip $ScriptGates_GTA_Multi_Theft_Auto -d /host/servers/mta/
			install_games
		;;
		14)
			mkdir -p /host/servers/samp037/
			unzip $ScriptGates_GTA_San_Andreas_037 -d /host/servers/samp037/
			install_games
		;;
		15)
			mkdir -p /host/servers/crmp/
			unzip $ScriptGates_GTA_Criminal_Russia -d /host/servers/crmp/
			install_games
		;;
		16)
			mkdir -p /host/servers/rwmp/
			unzip $ScriptGates_GTA_RenderWare -d /host/servers/rwmp/
			install_games
		;;
		17)
			mkdir -p /host/servers/anmp/
			unzip $ScriptGates_GTA_Alien_City_San_Anderius -d /host/servers/anmp/
			install_games
		;;
		18)
			mkdir -p /host/servers/g6mp/
			unzip $ScriptGates_Gostown6_Multiplayer -d /host/servers/g6mp/
			install_games
		;;
		19)
			mkdir -p /host/servers/vmp/
			unzip $ScriptGates_GTA_Vice_Multiplayer -d /host/servers/vmp/
			install_games
		;;
		20)
			mkdir -p /host/servers/samp03dl/
			unzip $ScriptGates_GTA_San_Andreas_03DL -d /host/servers/samp03dl/
			install_games
		;;
    21)
			mkdir -p /host/servers/rust/
			unzip $ScriptGates_RUST -d /host/servers/rust/
			install_games
		;;
		0) check;;
	esac
}
install_fastdl() {
  clear

  MKC_txt "Настройка FastDL для Apache"

  MKC_txt "Устанавливаем: apache2-mpm-itk"
		  sudo apt-get install -y apache2-mpm-itk
		  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: php5"
		  sudo apt-get install -y php5
		  sleep 2
	MKC_txt "Команда выполнена"

	STRING=$(apache2 -v | grep Apache/2.4)
		mkdir -p /etc/apache2/fastdl
		if [ "$STRING" = "" ]; then
			echo "Include /etc/apache2/fastdl/*.conf">>"/etc/apache2/apache2.conf"
		else
			echo "IncludeOptional fastdl/*.conf">>"/etc/apache2/apache2.conf"
		fi
		service apache2 restart
	MKC_txt "Настройка FastDL для Apache завершена"
}
install_ftp() {
  clear

  MKC_txt "Подготовка"

	MKC_txt "Устанавливаем: pure-ftpd-common"
		sudo apt-get install -y pure-ftpd-common
		sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: pure-ftpd"
	  sudo apt-get install -y pure-ftpd
		sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Установка FTP"
	  echo "yes" > /etc/pure-ftpd/conf/CreateHomeDir
	  echo "yes" > /etc/pure-ftpd/conf/NoAnonymous
	  echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone
	  echo "yes" > /etc/pure-ftpd/conf/VerboseLog
	  echo "yes" > /etc/pure-ftpd/conf/IPV4Only
	  echo "100" > /etc/pure-ftpd/conf/MaxClientsNumber
	  echo "8" > /etc/pure-ftpd/conf/MaxClientsPerIP
	  echo "no" > /etc/pure-ftpd/conf/DisplayDotFiles
	  echo "15" > /etc/pure-ftpd/conf/MaxIdleTime
	  echo "16" > /etc/pure-ftpd/conf/MaxLoad
	  echo "50000 50300" > /etc/pure-ftpd/conf/PassivePortRange
	  rm /etc/pure-ftpd/conf/PAMAuthentication /etc/pure-ftpd/auth/70pam
	  ln -s ../conf/PureDB /etc/pure-ftpd/auth/45puredb
	  pure-pw mkdb
	  /etc/init.d/pure-ftpd restart
	  screen -dmS ftp_s pure-pw useradd root -u www-data -g www-data -d /host -N 15000
	  sleep 3
	  screen -S ftp_s -p 0 -X stuff '123$\n';
	  sleep 2
	  screen -S ftp_s -p 0 -X stuff '123$\n';
	  sleep 1
	  pure-pw mkdb
	  /etc/init.d/pure-ftpd restart
	  pure-pw userdel root
	  pure-pw mkdb
	  /etc/init.d/pure-ftpd restart
	clear
	MKC_txt "Команда выполнена: Установка FTP"
}
install_java() {
  clear

  MKC_txt "Подготовка"

		check_os_update

		MKC_txt "Добавляем репозитории"
      echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
      echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
      echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
      echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
      apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
    MKC_txt "Репозитории добавлены"

    check_os_update

    MKC_txt "Устанавливаем: oracle-java8-installer"
	    sudo apt-get -y install oracle-java8-installer
	  MKC_txt "Команда выполнена"

	MKC_txt "Скрипт: Установка Java выполнен"
}
install_base() {

  MKC_txt "Устанавливаем: game-mc.class.php"
    minecraft_class.zip
  MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: ssh"
		sudo apt-get install -y ssh
		sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: screen"
	  sudo apt-get install -y screen
	  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: cpulimit"
	  sudo apt-get install -y cpulimit
	  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: zip"
	  sudo apt-get install -y zip
	  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: unzip"
	  sudo apt-get install -y unzip
	  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: htop"
	  sudo apt-get install -y htop
	  sleep 2
	MKC_txt "Команда выполнена"

	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then

	  MKC_txt "Архитектура пакетов: i386"
		  sudo dpkg --add-architecture i386
		MKC_txt "Команда выполнена"

		check_os_update

		MKC_txt "Устанавливаем: ia32-libs"
		  sudo apt-get install -y ia32-libs
		  sleep 2
		MKC_txt "Команда выполнена"

		MKC_txt

		MKC_txt "Устанавливаем: lib32gcc1"
		  apt-get install -y lib32gcc1
		  sleep 2
		MKC_txt "Команда выполнена"

		MKC_txt

		MKC_txt "Устанавливаем: lib32stdc++6"
		  apt-get install -y lib32stdc++6
		  sleep 2
		MKC_txt "Команда выполнена"

		MKC_txt

		MKC_txt "Устанавливаем: "
		  apt-get install -y libreadline5
		  sleep 2
		MKC_txt "Команда выполнена"

		MKC_txt

		MKC_txt "Устанавливаем: gcc-multilib"
		  apt-get install -y gcc-multilib
		  sleep 2
		MKC_txt "Команда выполнена"

		MKC_txt
		clear

		MKC_txt "Настройка часовых поясов"

		  MKC_txt "Указываем часовой пояс серверу: Europe/Moscow"
		    echo "Europe/Moscow" > /etc/timezone
		  MKC_txt "Готово"

		  MKC_txt

		  MKC_txt "Указываем часовой пояс php: Europe/Moscow"
		    dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
      MKC_txt "Готово"

      MKC_txt

      MKC_txt "Указываем часовой пояс apache2: Europe/Moscow"
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
      MKC_txt "Готово"

    MKC_txt "Настройка часовых поясов выполнена"

    sleep 2
	else

	  MKC_txt "Добавляем репозиторий"
		  cd /etc/apt/sources.list.d
		  echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
		MKC_txt "Команда выполнена"

		check_os_update

		MKC_txt "Устанавливаем: ia32-libs"
		  apt-get install -y ia32-libs
		MKC_txt "Команда выполнена"

		MKC_txt "Устанавливаем: lib32gcc1"
		  apt-get install -y lib32gcc1
		MKC_txt "Команда выполнена"

		MKC_txt "Устанавливаем: lib32stdc++6"
		  apt-get install -y lib32stdc++6
		MKC_txt "Команда выполнена"

		MKC_txt "Устанавливаем: libreadline5"
		  apt-get install -y libreadline5
		MKC_txt "Команда выполнена"

		MKC_txt "Устанавливаем: gcc-multilib"
		  apt-get install -y gcc-multilib
		MKC_txt "Команда выполнена"

		MKC_txt "Настройка часовых поясов"

		  MKC_txt "Указываем часовой пояс серверу: Europe/Moscow"
		    echo "Europe/Moscow" > /etc/timezone
		  MKC_txt "Готово"

		  MKC_txt "Указываем часовой пояс php: Europe/Moscow"
		    dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
      MKC_txt "Готово"

      MKC_txt "Указываем часовой пояс apache2: Europe/Moscow"
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
      MKC_txt "Готово"

    MKC_txt "Настройка часовых поясов выполнена"
	fi
	sleep 2
}
check_os_update() {
  MKC_txt "Обновляем пакеты"
    apt-get update -y
  MKC_txt "Завершаем обновление"
}
install_script() {
  clear
	check_os_update
	MKC_txt "Устанавливаем: apt-utils"
		  apt-get install -y apt-utils
		  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: sudo"
		  apt-get install -y sudo
		  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: net-tools"
		  apt-get install -y net-tools
		  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: pwgen"
		  apt-get install -y pwgen
		  sleep 2
	MKC_txt "Команда выполнена"

	MKC_txt "Устанавливаем: dialog"
		  apt-get install -y dialog
		  sleep 2
	MKC_txt "Команда выполнена"

	clear

	ifconfig

	MKC_txt
	MKC_txt "Для продолжения установки $panel, введите, пожалуйста, домен или ip"
	  read -p "Пожалуйста, введите ${red}домен ${green}или ${red}IP${green}:${yellow}" DOMAIN
	clear

	MKC_txt "Генерируем пароль для MySQL"
	  password=$(pwgen -cns -1 20)
	MKC_txt "Пароль сгенерирован"

	MKC_txt "Устанавливаем: dotdeb.gpg"
	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then
		MKC_txt "Добавляем репозиторий"
		  echo "deb http://packages.dotdeb.org wheezy-php55 all">"/etc/apt/sources.list.d/dotdeb.list"
		  echo "deb-src http://packages.dotdeb.org wheezy-php55 all">>"/etc/apt/sources.list.d/dotdeb.list"
		MKC_txt "Добавлено"
		apt-key add $ScriptGates_DOTDEB
		MKC_txt "Установка: dotdeb выполнена"
	fi

	check_os_update

	MKC_txt "Установка обновлений"
	  apt-get upgrade -y
	MKC_txt "Команда выполнена обновлений"

	MKC_txt

	MKC_txt "Установка пароля MySQL"
	  echo mysql-server mysql-server/root_password select "$password" | debconf-set-selections
	  echo mysql-server mysql-server/root_password_again select "$password" | debconf-set-selections
	MKC_txt "Пароль сохранён"

	MKC_txt "Установка пакетов:"

	  MKC_txt "Устанавливаем: apache2"
	    apt-get install -y apache2
	    sleep 2
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: php5"
	    apt-get install -y php5
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: php5-dev"
	    apt-get install -y php5-dev
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: cron"
	    apt-get install -y cron
	    sleep 2
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: php5-curl"
	    apt-get install -y php5-curl
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: php5-memcache"
	    apt-get install -y php5-memcache
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: php5-json"
	    apt-get install -y php5-json
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: memcached"
	    apt-get install -y memcached
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: mysql-server"
	    apt-get install -y mysql-server
	    sleep 5
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  MKC_txt "Устанавливаем: libapache2-mod-php5"
	    apt-get install -y libapache2-mod-php5
	    sleep 3
	  MKC_txt "Команда выполнена"

	  MKC_txt

	  if [ "$OS" = "" ]; then
	    MKC_txt "Устанавливаем: php5-ssh2"
		    apt-get install -y php5-ssh2
		  MKC_txt "Команда выполнена"
		  sleep 3
	  else
	    MKC_txt "Устанавливаем: libssh2-php"
		    apt-get install -y  libssh2-php
		  MKC_txt "Команда выполнена"
		  sleep 3
	  fi

	MKC_txt "Установка пакетов завершена"
	clear

  MKC_txt "Настройка:${yellow} phpmyadmin"
	  echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
	  echo "phpmyadmin phpmyadmin/mysql/admin-user string root" | debconf-set-selections
	  echo "phpmyadmin phpmyadmin/mysql/admin-pass password $password" | debconf-set-selections
	  echo "phpmyadmin phpmyadmin/mysql/app-pass password $password" |debconf-set-selections
	  echo "phpmyadmin phpmyadmin/app-password-confirm password $password" | debconf-set-selections
	  echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections
	MKC_txt "Настройка:${yellow} phpmyadmin ${green}выполнена"

	MKC_txt

	MKC_txt "Устанавливаем: phpmyadmin"
	  apt-get install -y phpmyadmin
	MKC_txt "Установка:${yellow} phpmyadmin ${green}выполнена"

	sleep 5
	MKC_txt

	MKC_txt "Настройка:${yellow} apache2"
	  STRING=$(apache2 -v | grep Apache/2.4)
	  if [ "$STRING" = "" ]; then
		  FILE='/etc/apache2/conf.d/mkc'
		  echo "<VirtualHost *:80>">$FILE
		  echo "ServerName $DOMAIN">>$FILE
		  echo "DocumentRoot $install">>$FILE
		  echo "<Directory $install/>">>$FILE
		  echo "Options Indexes FollowSymLinks MultiViews">>$FILE
		  echo "AllowOverride All">>$FILE
		  echo "Order allow,deny">>$FILE
		  echo "allow from all">>$FILE
		  echo "</Directory>">>$FILE
		  echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		  echo "LogLevel warn">>$FILE
		  echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		  echo "</VirtualHost>">>$FILE
	  else
		  FILE='/etc/apache2/conf-enabled/mkc.conf'
		  cd /etc/apache2/sites-available
		  sed -i "/Listen 80/d" *
		  cd ~
		  echo "Listen 80">$FILE
		  echo "<VirtualHost *:80>">$FILE
		  echo "ServerName $DOMAIN">>$FILE
		  echo "DocumentRoot $install">>$FILE
		  echo "<Directory $install/>">>$FILE
		  echo "AllowOverride All">>$FILE
		  echo "Require all granted">>$FILE
		  echo "</Directory>">>$FILE
		  echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		  echo "LogLevel warn">>$FILE
		  echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		  echo "</VirtualHost>">>$FILE
	  fi
	MKC_txt "Настройка:${yellow} apache2 ${green}выполнена"

	MKC_txt "Запускаем модули:"

	  MKC_txt "Запуск: rewrite"
	    a2enmod rewrite
	    sleep 2
	  MKC_txt "Выполнено: rewrite"

	  MKC_txt "Запуск: php5"
	    a2enmod php5
	    sleep 2
	  MKC_txt "Выполнено: php5"

	MKC_txt "Запуск модулей выполнено"
	clear

	MKC_txt "Устанавливаем: IONCube"
	  unzip $ScriptGates_IONCube -d /tmp/mkc/gamepl/
	  cp /tmp/mkc/gamepl/ioncube/ioncube_loader_lin_5.5.so /usr/lib/php5/20121212/ioncube_loader_lin_5.5.so
	  rm -rf /tmp/mkc/gamepl/*
	MKC_txt "Команда выполнена"

  MKC_txt "Добавляем модули IONCube"
	  echo "zend_extension=ioncube_loader_lin_5.5.so">>"/etc/php5/apache2/php.ini"
	  echo "zend_extension=ioncube_loader_lin_5.5.so">>"/etc/php5/cli/php.ini"
	MKC_txt "Модули IONCube добавлены"

	clear

	MKC_txt "Создание задачи в cron"
	  (crontab -l ; echo "*/1 * * * * cd $install/;php5 cron.php") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -
	  chown root:crontab /var/spool/cron/crontabs/root
	MKC_txt "Задача создана"

  MKC_txt

	MKC_txt "Перезапускаем модули:"

	  MKC_txt "Перезапуск: cron"
	    service cron restart
	  MKC_txt "Выполнено: service cron restart"

	  MKC_txt "Перезапуск: apache2"
	    service apache2 restart
	  MKC_txt "Выполнено: service apache2 restart"

	MKC_txt "Модули перезапущены"

	clear

	MKC_txt "Установка $panel в директорию${red}: $install"

	  MKC_txt "Создание папки с сайтом"
	    mkdir -p $install/
	  MKC_txt "Готово"

	  MKC_txt

	  MKC_txt "Делегирование прав директории"
	    chown -R www-data:www-data $install/
	    chmod -R 770 $install/
	  MKC_txt "Готово"

	  MKC_txt

	  MKC_txt "Подключаем папку с сайтом"
	    cd $install/
	    rm -rf index.html
	  MKC_txt "Готово"

	  MKC_txt

	  MKC_txt "Распаковка сайта в директорию: $install"
	    unzip $ScriptGates_ZIP -d $install
	  MKC_txt "Готово"

	  MKC_txt "Распаковка базы данных"
	    sed -i 's/host/'$DOMAIN'/g' $install/data/conf.ini
	    sed -i 's/passwd/'$password'/g' $install/data/conf.ini
	    mysql -uroot -p$password -e "CREATE DATABASE gamepl;"
	    mysql -uroot -p$password gamepl < $ScriptGates_SQL
	  MKC_txt "Команда выполнена"

	  echo "Europe/Moscow" > /etc/timezone
	  dpkg-reconfigure tzdata -f noninteractive
    sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
    sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini

  sleep 5

  MKC_txt "Перезапускаем модули:"

	  MKC_txt "Перезапуск: apache2"
	    service apache2 restart
	  MKC_txt "Выполнено: service apache2 restart"

	  MKC_txt "Перезапуск: mysql"
	    service mysql restart
	  MKC_txt "Выполнено: service mysql restart"

	MKC_txt "Модули перезапущены"
	
	clear
		MKC_txt "Данные для входа в ${red}phpMyAdmin${green} и ${red}MySQL${green}:"
		MKC_txt "${red}Логин${green}: ${yellow}root"
		MKC_txt "${red}Пароль${green}: ${yellow}$password"
		MKC_txt
		MKC_txt "${red}Войти в панель управления $panel ${blue}$version${yellow}: http://$DOMAIN"
		MKC_txt "${red}Войти в phpMyAdmin:${yellow} http://$DOMAIN/phpmyadmin"
		MKC_txt
		MKC_txt "${green}Данные для входа в панель управления админом:"
		MKC_txt "${green}Логин${red}:  admin@scriptgates.ru"
		MKC_txt "${green}Пароль:${red}  scriptgates"
		MKC_txt
		MKC_txt "${red}Обязательно смените email и пароль после авторизации!"
		MKC_txt "${yellow}Скопируйте и сохраните эти данные"
	MKC_txt
	MKC_txt "1  -  ${red}[ВАЖНО]${green} Настроить машину под игры"
	MKC_txt "2  -  Установить игры на машину"
	MKC_txt "0  -  Выход"
	MKC_txt
	read -p "Пожалуйста, введите номер меню:" case
	case $case in
		1) server_setup;;
		2) install_games;;
		0) exit;;
	esac
}
support_project() {
	clear
	MKC_txt "${blue}Мы вместе с ScriptGates.ru потратили время, силы, финансы."
	MKC_txt "${blue}Поддержать сервер ScriptGates: https://vk.cc/bWItHu"
	MKC_txt
	MKC_txt "${red}Поддержите взлом $panel по ссылке ниже:"
  MKC_txt "${red}Яндекс.Деньги/YooMoney: https://vk.cc/bWItJ8"
  MKC_txt
  MKC_txt "Другие способы оплаты в ЛС Telegram: https://t.me/MiKillCrafter"
  MKC_txt "Как будет получена указанная сумма, мы расшифруем несколько версий GamePL."
  MKC_txt "Первыми файл получат донатеры указавшие свой Email в YooMoney или в ЛС Telegram."
  MKC_txt "Следующими получат все на сайте первоисточника: https://scriptgates.ru"
	MKC_txt "- ${red}0${green}  -  ${red}>>>${green} В главное меню ${red}<<<"
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		0) check;;
	esac
}
server_setup() {
	check_os_update
	clear
	MKC_txt "Настройка сервера под $panel"
	MKC_txt "- ${red}1${green}  -  Установить основные пакеты для машины с играми"
	MKC_txt "- ${red}2${green}  -  Настроить FastDL на Apache для машины с играми"
	MKC_txt "- ${red}3${green}  -  Настроить FastDL на Nginx для машины с играми"
	MKC_txt "- ${red}4${green}  -  Установить FTP сервер для машины с играми"
	MKC_txt "- ${red}5${green}  -  Установить Java для Minecraft"
	MKC_txt "- ${red}0${green}  -  В главное меню <<<"
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) install_base;;
		2) install_fastdl;;
		4) install_ftp;;
		5) install_java;;
		0) check;;
	esac
	server_setup
}
isset() {
  clear
	  MKC_txt "Оффлайн установщик ${blue}$panel $version"
	  MKC_txt "• - ${red}1${green}  -  Установить панель управления"
	  MKC_txt "• - ${red}2${green}  -  Настроить VDS под игры"
	  MKC_txt "• - ${red}3${green}  -  Установить игры на VDS"
	  MKC_txt "• - ${red}4${green}  -  ${red}Помощь проекту"
	  MKC_txt "• - ${red}0${green}  -  Выход"
	  MKC_txt
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
	 	1) install_script;;
	 	2) server_setup;;
	 	3) install_games;;
	 	4) support_project;;
	 	0) exit;;
	esac
}
check() {
	clear
	if [ "$USER" = "root" ]; then
		if [ -d /mkc ]; then
    if [ -d /mkc/install/server ]; then
      if [ -f $ScriptGates_ZIP ]; then
        if [ -f $ScriptGates_SQL ]; then
          alert
          isset
        else echo "${red}Файл '${yellow}gamepl.sql' ${red}не найден."; exit
      fi
      else echo "${red}Файл '${yellow}gamepl.zip' ${red}не найден."; exit
      fi
    else echo "${red}ОШИБКА. Папки ${yellow}/mkc/install/server ${red}не существует"; exit
    fi
  else
    MKC_txt "${red}ОШИБКА. Папки ${yellow}/mkc ${red}не существует"
    MKC_txt "Прежде чем начать установку, вы должны заполнить папку ${yellow}/mkc ${green}необходимыми файлами"
    MKC_txt "Необходимые файлы можно скачать на ПК и загрузить на сервер используя FileZilla:"
    MKC_txt "В эту директорию загрузите серверные файлы: ${yellow}/mkc/install/server"
    MKC_txt "${yellow}Ссылка на серверные файлы: https://vk.cc/bWIsEj"
    MKC_txt "В эту директорию загрузите zip файлы игр: ${yellow}/mkc/install/games"
    MKC_txt "${yellow}Ссылка на игровые файлы: https://vk.cc/bWIsJM"
    mkdir -p /mkc
    mkdir -p /mkc/install
    mkdir -p /mkc/install/server
    mkdir -p /mkc/install/games
    exit
  fi
  else MKC_txt "${red}You are not a root | Вы не root";
  fi
}

check