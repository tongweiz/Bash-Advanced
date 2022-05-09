# while :
# do
#   echo `date`
#   sleep 5
# done

# if [ $TEST_VAR = 1 ]
# then :
# else
#   echo `date`
# fi

# # : could be a function name
# : ()
# {
#   echo "The function name is $FUNCNAME"
# }
# :

# echo \"{test,1,2,3}\"
# cat {DockerTest.sh,practice.sh} > test.sh
# cp practice.{sh,hs}
# echo {file1,file2}\ :{\ A," B",' C'}

# # Reading lines in /etc/fstab.
# File=/etc/fstab

# {
# read line1
# read line2
# } < $File

# echo "First line in $File is:"
# echo "$line1"
# echo
# echo "Second line in $File is:"
# echo "$line2"

# exit 0

# for i in 1 2 3 4 5 6 7 8 9 0
# do
#   echo -n "$i "
# done

# for i in 11 12 13 14 15 16 17 18 19 20
# do
#   echo -n "$i "
# done
# exit 0

echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a."