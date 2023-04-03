ngrok_cmd="sudo ngrok tcp 22 --log \".ngrok.log\" &> /dev/null &"

# Start a new screen session and execute the Ngrok command in it
screen -S ngrok -d -m bash -c "${ngrok_cmd}"

# Print confirmation message
echo "Ngrok tunnel started in a new screen session."
