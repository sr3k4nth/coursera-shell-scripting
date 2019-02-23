function fileCount () {
    return $(ls -l | wc -l)
}
fileCount
count=$?
while(true)
do 
echo "how many files are in the current directory"
read val
if [[ $val =~ ^[a-zA-Z*/_%-+@$\s]*$ ]]
then
    echo "NaN..(Not a Number)..";
elif [[ $val -gt $count ]]
    then
        echo "Too High! Guess Again.."
elif [[ $val -lt $count ]]; then
    echo "Too Low! Guess Again.."
elif [[ $val -eq $count ]]; then
    echo "Congrats, You Guessed it Right! You get the CAKE!!"
    break
fi
done
