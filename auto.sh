#!/bin/bash


zenity --info --width=250 --height=110 --text "<b><span color=\'green\'>CENTRAL DE PROGRAMAS DO LEI</span></b> 

A lista de programas será carregada em breve, porém antes de prosseguir, realize login como <b>administrador do sistema</b>"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c 'selection=$(zenity --width=400 --height=400 --list --checklist --separator="\n" --title="Instalador de programas" --text="Selecione o que deseja instalar:" --column="" --column="Programas" False "VISUAL STUDIO CODE" False "UNITY HUB" False "VIRTUALBOX E EXTENSÃO" False "PYTHON" False "MYSQL WORKBENCH" False "NETBEANS" False "PORTUGOL STUDIO" False "EPOPTES" False "XAMPP" False "PYCHARM")


case "$selection" in

"VISUAL STUDIO CODE")sh /home/administrador/ScriptAutoEps/vsc.sh 2>/dev/null ;;
"UNITY HUB")sh /home/administrador/Documentos/scripts/exe.sh 2>/dev/null ;;
"VIRTUALBOX E EXTENSÃO")sh /home/administrador/ScriptAutoEps/vtb.sh 2>/dev/null ;;
"PYTHON")sh /home/administrador/ScriptAutoEps/pyt.sh 2>/dev/null;;
"MYSQL WORKBENCH")  ;;
"NETBEANS")sh /home/administrador/ScriptAutoEps/ntb.sh 2>/dev/null ;;
"PORTUGOL STUDIO")sh /home/administrador/ScriptAutoEps/ptgs.sh 2>/dev/null ;;
"EPOPTES")sh /home/administrador/ScriptAutoEps/eppt.sh 2>/dev/null ;;
"XAMPP")sh /home/administrador/ScriptAutoEps/lmpp.sh 2>/dev/null ;;
"PYCHARM")  ;;

esac

'

