#!/bin/bash

echo "------------------------------------------ ATUALIZANDO OS PACOTES"
apt update
# ------------------------------------------ PORTUGOL STUDIO
echo '"------------------------------------------Configurando Portugol Studio...'
if [ ! -f  $tmp_dir/portugol.run.zip ]; then
    wget -cq --show-progress https://github.com/UNIVALI-LITE/Portugol-Studio/releases/download/v2.7.5/portugol-studio-2.7.5-linux-x64.run.zip -O $tmp_dir/portugol.run.zip
fi
cd $tmp_dir
unzip portugol.run.zip
mv portugol-studio* portugol.run
chmod +x portugol.run
echo '> Instalando Portugol Studio...'
sudo ./portugol.run
cd -




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

