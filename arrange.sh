cd files

for file in *; do
    alpha=$(echo $file | head -c 1 | tr '[:upper:]' '[:lower:]')
    
    if [ ! -d "../$alpha" ]; then
        echo "Something wrong with dir"
        continue
    fi

    mv "$file" "../$alpha/"
done
