install_minecraft_list()
{
    clear
    Info
    log_t "Список доступных версий"
    Info "- 1  - 1.12.1"
    Info "- 2  - 1.12"
    Info "- 3  - 1.11.2"
    Info "- 4  - 1.11.1"
    Info "- 5  - 1.11"
    Info "- 6  - 1.10.2"
    Info "- 7  - 1.10"
    Info "- 8  - 1.9.4"
    Info "- 9  - 1.9.2"
    Info "- 10  - 1.9"
    Info "- 11  - 1.8.8"
    Info "- 12  - 1.8.7"
    Info "- 13  - 1.8.6"
    Info "- 14  - 1.8.5"
    Info "- 15  - 1.8.4"
    Info "- 16  - 1.8.3"
    Info "- 17  - 1.8"
    Info "- 18  - 1.7.10"
    Info "- 19  - 1.7.9"
    Info "- 20  - 1.7.8"
    Info "- 21  - 1.7.5"
    Info "- 22  - 1.7.2"
    Info "- 23  - 1.6.4"
    Info "- 24  - 1.6.2"
    Info "- 25  - 1.6.1"
    Info "- 26  - 1.5.2"
    Info "- 27  - 1.5.1"
    Info "- 28  - 1.5"
    Info "- 29  - 1.4.7"
    Info "- 30  - 1.4.6"
    Info "- 31  - 1.4.5"
    Info "- 32  - 1.4.2"
    Info "- 33  - 1.3.2"
    Info "- 34  - 1.3.1"
    Info "- 35  - 1.2.5"
    Info "- 36  - 1.2.4"
    Info "- 37  - 1.2.3"
    Info "- 38  - 1.2.2"
    Info "- 39  - 1.1"
    Info "- 40  - 1.0.0"
    Info "- ${red}41  - ${yellow}1.13.2 [/host/servers/mcLAST/]"
    Info "- 0  -  Назад"
    log_s
    Info
    read -p "Пожалуйста, введите пункт меню: " case
    case $case in
        1)
            mkdir /host/servers/mine1121/
            cd /host/servers/mine1121/
            wget $ScriptGates_GMS/mc/craftbukkit-1.12.1.jar
            install_games
        ;;
        2)
            mkdir /host/servers/mine112/
            cd /host/servers/mine112/
            wget $ScriptGates_GMS/mc/craftbukkit-1.12.jar
            install_games
        ;;
        3)
            mkdir /host/servers/mine1112/
            cd /host/servers/mine1112/
            wget $ScriptGates_GMS/mc/craftbukkit-1.11.2.jar
            install_games
        ;;
        4)
            mkdir /host/servers/mine1111/
            cd /host/servers/mine1111/
            wget $ScriptGates_GMS/mc/craftbukkit-1.11.1.jar
            install_games
        ;;
        5)
            mkdir /host/servers/mine111/
            cd /host/servers/mine111/
            wget $ScriptGates_GMS/mc/craftbukkit-1.11.jar
            install_games
        ;;
        6)
            mkdir /host/servers/mine1102/
            cd /host/servers/mine1102/
            wget $ScriptGates_GMS/mc/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        7)
            mkdir /host/servers/mine110/
            cd /host/servers/mine110/
            wget $ScriptGates_GMS/mc/craftbukkit-1.10-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        8)
            mkdir /host/servers/mine194/
            cd /host/servers/mine194/
            wget $ScriptGates_GMS/mc/craftbukkit-1.9.4-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        9)
            mkdir /host/servers/mine192/
            cd /host/servers/mine192/
            wget $ScriptGates_GMS/mc/craftbukkit-1.9.2-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        10)
            mkdir /host/servers/mine19/
            cd /host/servers/mine19/
            wget $ScriptGates_GMS/mc/craftbukkit-1.9-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        11)
            mkdir /host/servers/mine188/
            cd /host/servers/mine188/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        12)
            mkdir /host/servers/mine187/
            cd /host/servers/mine187/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.7-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        13)
            mkdir /host/servers/mine186/
            cd /host/servers/mine186/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.6-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        14)
            mkdir /host/servers/mine185/
            cd /host/servers/mine185/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.5-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        15)
            mkdir /host/servers/mine184/
            cd /host/servers/mine184/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.4-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        16)
            mkdir /host/servers/mine183/
            cd /host/servers/mine183/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8.3-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        17)
            mkdir /host/servers/mine18/
            cd /host/servers/mine18/
            wget $ScriptGates_GMS/mc/craftbukkit-1.8-R0.1-SNAPSHOT-latest.jar
            install_games
        ;;
        18)
            mkdir /host/servers/mine1710/
            cd /host/servers/mine1710/
            wget $ScriptGates_GMS/mc/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar
            install_games
        ;;
        19)
            mkdir /host/servers/mine179/
            cd /host/servers/mine179/
            wget $ScriptGates_GMS/mc/craftbukkit-1.7.9-R0.2-SNAPSHOT.jar
            install_games
        ;;
        20)
            mkdir /host/servers/mine178/
            cd /host/servers/mine178/
            wget $ScriptGates_GMS/mc/craftbukkit-1.7.8-R0.1-SNAPSHOT.jar
            install_games
        ;;
        21)
            mkdir /host/servers/mine175/
            cd /host/servers/mine175/
            wget $ScriptGates_GMS/mc/craftbukkit-1.7.5-R0.1-20140402.020013-12.jar
            install_games
        ;;
        22)
            mkdir /host/servers/mine172/
            cd /host/servers/mine172/
            wget $ScriptGates_GMS/mc/craftbukkit-1.7.2-R0.4-20140216.012104-3.jar
            install_games
        ;;
        23)
            mkdir /host/servers/mine164/
            cd /host/servers/mine164/
            wget $ScriptGates_GMS/mc/craftbukkit-1.6.4-R2.0.jar
            install_games
        ;;
        24)
            mkdir /host/servers/mine162/
            cd /host/servers/mine162/
            wget $ScriptGates_GMS/mc/craftbukkit-1.6.2-R0.1-SNAPSHOT.jar
            install_games
        ;;
        25)
            mkdir /host/servers/mine161/
            cd /host/servers/mine161/
            wget $ScriptGates_GMS/mc/craftbukkit-1.6.1-R0.1-SNAPSHOT.jar
            install_games
        ;;
        26)
            mkdir /host/servers/mine152/
            cd /host/servers/mine152/
            wget $ScriptGates_GMS/mc/craftbukkit-1.5.2-R1.0.jar
            install_games
        ;;
        27)
            mkdir /host/servers/mine151/
            cd /host/servers/mine151/
            wget $ScriptGates_GMS/mc/craftbukkit-1.5.1-R0.2-SNAPSHOT.jar
            install_games
        ;;
        28)
            mkdir /host/servers/mine15/
            cd /host/servers/mine15/
            wget $ScriptGates_GMS/mc/craftbukkit-1.5-R0.1-20130317.180842-21.jar
            install_games
        ;;
        29)
            mkdir /host/servers/mine147/
            cd /host/servers/mine147/
            wget $ScriptGates_GMS/mc/craftbukkit-1.4.7-R1.1-SNAPSHOT.jar
            install_games
        ;;
        30)
            mkdir /host/servers/mine146/
            cd /host/servers/mine146/
            wget $ScriptGates_GMS/mc/craftbukkit-1.4.6-R0.4-SNAPSHOT.jar
            install_games
        ;;
        31)
            mkdir /host/servers/mine145/
            cd /host/servers/mine145/
            wget $ScriptGates_GMS/mc/craftbukkit-1.4.5-R1.1-SNAPSHOT.jar
            install_games
        ;;
        32)
            mkdir /host/servers/mine142/
            cd /host/servers/mine142/
            wget $ScriptGates_GMS/mc/craftbukkit-1.4.2-R0.3-SNAPSHOT.jar
            install_games
        ;;
        33)
            mkdir /host/servers/mine132/
            cd /host/servers/mine132/
            wget $ScriptGates_GMS/mc/craftbukkit-1.3.2-R2.1-SNAPSHOT.jar
            install_games
        ;;
        34)
            mkdir /host/servers/mine131/
            cd /host/servers/mine131/
            wget $ScriptGates_GMS/mc/craftbukkit-1.3.1-R2.1-SNAPSHOT.jar
            install_games
        ;;
        35)
            mkdir /host/servers/mine125/
            cd /host/servers/mine125/
            wget $ScriptGates_GMS/mc/craftbukkit-1.2.5-R5.1-SNAPSHOT.jar
            install_games
        ;;
        36)
            mkdir /host/servers/mine124/
            cd /host/servers/mine124/
            wget $ScriptGates_GMS/mc/craftbukkit-1.2.4-R1.1-SNAPSHOT.jar
            install_games
        ;;
        37)
            mkdir /host/servers/mine123/
            cd /host/servers/mine123/
            wget $ScriptGates_GMS/mc/craftbukkit-1.2.3-R0.3-SNAPSHOT.jar
            install_games
        ;;
        38)
            mkdir /host/servers/mine122/
            cd /host/servers/mine122/
            wget $ScriptGates_GMS/mc/craftbukkit-1.2.2-R0.1-SNAPSHOT.jar
            install_games
        ;;
        39)
            mkdir /host/servers/mine11/
            cd /host/servers/mine11/
            wget $ScriptGates_GMS/mc/craftbukkit-1.1-R5-SNAPSHOT.jar
            install_games
        ;;
        40)
            mkdir /host/servers/mine100/
            cd /host/servers/mine100/
            wget $ScriptGates_GMS/mc/craftbukkit-1.0.0-SNAPSHOT.jar
            install_games
        ;;
        41)
            mkdir /host/servers/mcLAST/
            cd /host/servers/mcLAST/
            wget $ScriptGates_MC
            install_games
        ;;
        0)
        install_games
        ;;
    esac
}
