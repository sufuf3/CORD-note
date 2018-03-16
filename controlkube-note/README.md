# First
```sh
curl -o ~/cord-bootstrap.sh https://raw.githubusercontent.com/opencord/cord/cord-5.0/scripts/cord-bootstrap.sh
chmod +x cord-bootstrap.sh
./cord-bootstrap.sh -d
export VAGRANT_SERVER_URL="https://vagrantcloud.com"
logout
```

# Second
login again
```sh
time bash ./cord-bootstrap.sh -v -x -t "PODCONFIG=rcord-controlkube.yml config" \
-t "build" | tee -a ~/setup.log
```
