npx create-react-app sample-app

cd sample-app

//get ip base on network iface
ifconfig wlp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'


ip route | awk '/default/ { print $3 }'

laravel cors:
https://medium.com/@KrishaWeb/cross-origin-request-blocked-error-in-laravel-5-5-a733232795e4