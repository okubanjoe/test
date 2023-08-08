counter=1

while [ $counter -le 100 ]
do
    echo $counter
    counter=$((counter + 1))
    sleep 1  # Optional: add a delay between iterations
done
