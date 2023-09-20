cd files

for file in *; do
    first_letter=$(echo $file | head -c 1 | tr '[:upper:]' '[:lower:]')
    
    if [ ! -d "../$first_letter" ]; then
        echo "Directory $first_letter does not exist!"
        continue
    fi

    mv "$file" "../$first_letter/"
done
