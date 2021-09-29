
clear
read -p "Enter new alias name: " aut
echo ""
read -p "Enter command action: " cum
echo ""
echo ""
echo "Alias name: $aut"
echo "Action: $cum" 
echo "Codeline: alias $aut='$cum'"
        while true; do
          read -p "Add Alias? (y/n)" yn
           case $yn in 
                [Yy]* ) echo "alias $aut='$cum'" >> $HOME/.bashrc
                clear
                source $HOME/.bashrc
                echo "Added alias $aut='$cum' in .bashrc" 
                echo "Done!"
                exit ;;
                [Nn]* ) exit;;
* ) echo "Please answer yes or no. (y/n)";;
    esac
done
