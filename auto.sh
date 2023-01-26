	#!/bin/bash

zenity --info --width=250 --height=110 --text "<b><span color=\'green\'>CENTRAL DE PROGRAMAS DO LEI</span></b> 

A lista de programas será carregada em breve, porém antes de prosseguir, realize login como <b>administrador do sistema</b>"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c 'selection=$(zenity --width=400 --height=400 --list --checklist --separator="\n" --title="Instalador" --text="Selecione os programas que deseja instalar"\
--hide-column=2 --print-column=2 --column="Indice" --column="Programas" False "VisualStudio" False "UnityHub" False "VirtualBox" False "Python" False "MYSQLWorkbench" False "NetBeans" False "PortugolStudio" False "Epoptes" False "XAMPP" False "Pycharm" False "Atom")

VisualStudio(){
	sh /home/administrador/ScriptAutoEps/vsc.sh
}

UnityHub(){
	zenity --info --text="Ainda não há nenhum comando para executar"
}

VirtualBox(){
	sh /home/administrador/ScriptAutoEps/vtb.sh
}

Python(){
	sh /home/administrador/ScriptAutoEps/pyt.sh
}

MYSQLWorkbench(){
	sh /home/administrador/ScriptAutoEps/mysql.sh
}

NetBeans(){
	sh /home/administrador/ScriptAutoEps/ntb.sh
}

PortugolStudio(){
	sh /home/administrador/ScriptAutoEps/ptgs.sh
}

Epoptes(){
	sh /home/administrador/ScriptAutoEps/eppt.sh
}

XAMPP(){
	sh /home/administrador/ScriptAutoEps/lmpp.sh


Pycharm(){
	zenity --info --text="Ainda não há nenhum comando para executar"
}

Atom(){
	sh /home/administrador/ScriptAutoEps/atm.sh}

}

for i in $selection
do
	$i

	
done
'

if [ $? -eq 0 ]; then
    zenity --width=180 --height=130 --info --text="<b><span color=\'green\'>A instalação foi concluida
	  com sucesso!</span></b>"
fi
