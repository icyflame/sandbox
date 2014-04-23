# sandbox measures

rm -rf gitTest/
mkdir gitTest
cd gitTest

#############################
#############################
# SCRIPT BEGINS
#############################
#############################

echo "`date`"
echo "Menu"
echo "[1] Initialise the repository"
echo "[2] Commit sequence"
echo "[3] Push sequence"
echo "[4] Settings"
echo "[5] Quit"
echo -n "Enter your option: "
read option

# echo "Option read was $option"

case $option in

	1)
		touch README.md
		touch .gitignore
		echo "We have prepared the readme file. Do you want to edit it?(Y or N)"
		read sub

		# echo "The option read was $sub"

		case $sub in

			"Y" | "y" ) 

				echo "You have choosed to edit the README file. We will now open the file in the text editor NANO."
				echo "Once you are done writing the readme, Press ^O, Enter key, followed by ^X."
				echo "Okay? (Press enter to proceed)"
				read

				nano README.md ;;

			*) 
				echo "Default text entered into the README. You can edit it later."
				echo "This is a sample README file." > README.md ;;

		esac

		git init

		;;

	2)

		echo "You have entered the commit sequence."

		echo "Do you want to add to the repository all the untracked files and the modifications to the repository?"
		echo "(This is the recommended way. If you don't want to do this, press N)"
		read sub

		case $sub in 

			"Y" | "y")

				git add .
				;;

			*)
				
				echo "Please enter the add command. You can add files that you want to add to the repository."
				read addCommand
				$addCommand

				;;
		esac

		git commit -a

		;;

	3)

		echo "You have choosed to push the code to github server"
		echo "Please enter the name of the branch to which you want to push the code to (default: master) : "
read branch

if [ "$branch" == "" ]
then branch='master'
fi

echo "Pushing code to $branch"
git push origin $branch
;;

	5) 

		echo "Thanks for using this script! - icyflame"
		exit 0 

		;;

	*) 

		echo "Option unavailable." ;;

esac
