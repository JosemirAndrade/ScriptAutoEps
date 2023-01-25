#!/bin/bash
echo "------------------------------------------ ATUALIZANDO OS PACOTES"
apt update
# ------------------------------------------ VISUAL STUDIO CODE

echo "> ------------------------------------------   Instalando as dependências   -----------------------------------------"
sudo apt install software-properties-common apt-transport-https wget -y

echo "> ------------------------ Adicionando chaves de verificação da integridade dos pacotes ------------------------------"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
apt update
echo "> --------------------------------------- Adionando repositório ------------------------------------------------------"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update
echo "> ------------------------------------------ INSTALANDO VISUAL STUDIO CODE -------------------------------------------"
sudo apt install code -y






if [ $? -eq 0 ]; then
    zenity --width=180 --height=130 --info --text="<b><span color=\'green\'>A instalação foi concluida
	  com sucesso!</span></b>"

    else
        zenity --width=200 --info --text="<b><span color=\'red\'>A instalação foi interrompida
        ao apresentar erros.
       	
       	Por favor verificar! </span></b>"
fi


selection=$(zenity --width=400 --height=400 --list --checklist --separator="\n" --title="Instalador de programas" --text="Selecione o que deseja instalar:" --column="" --column="Programas" FALSE "VISUAL STUDIO CODE" FALSE "UNITY HUB" FALSE "VIRTUALBOX E EXTENSÃO" FALSE "PYTHON" FALSE "MYSQL WORKBENCH" FALSE "NETBEANS" FALSE "PORTUGOL STUDIO" FALSE "EPOPTES" FALSE "XAMPP" FALSE "PYCHARM")

case "$selection" in

"VISUAL STUDIO CODE")sh /home/administrador/ScriptAutoEps/vsc.sh 2>/dev/null return;;

"UNITY HUB")sh /home/administrador/Documentos/scripts/exe.sh 2>/dev/null return;;

"VIRTUALBOX E EXTENSÃO")sh /home/administrador/ScriptAutoEps/vtb.sh 2>/dev/null return;;

"PYTHON")sh /home/administrador/ScriptAutoEps/pyt.sh 2>/dev/null;;
"MYSQL WORKBENCH")  ;;
"NETBEANS")sh /home/administrador/ScriptAutoEps/ntb.sh 2>/dev/null ;;
"PORTUGOL STUDIO")sh /home/administrador/ScriptAutoEps/ptgs.sh 2>/dev/null ;;
"EPOPTES")sh /home/administrador/ScriptAutoEps/eppt.sh 2>/dev/null ;;
"XAMPP")sh /home/administrador/ScriptAutoEps/lmpp.sh 2>/dev/null ;;
"PYCHARM")echo "teste" ;;

esac

