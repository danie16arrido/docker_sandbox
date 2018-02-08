npx create-react-app sample-app

cd sample-app

//get ip base on network iface
ifconfig wlp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'


ip route | awk '/default/ { print 


laravel cors:
https://medium.com/@KrishaWeb/cross-origin-request-blocked-error-in-laravel-5-5-a733232795e4

setting node env when building container(ip gateway)
https://forums.docker.com/t/how-do-i-send-runs-output-to-env-in-dockerfile/16106/3