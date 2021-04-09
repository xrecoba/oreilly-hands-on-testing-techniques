# start docker logging http requests
docker run -p 8080:8080 -p 8443:8443 --rm -t mendhak/http-https-echo:18
# Display the request
request.txt file 

# start testing "the API" with the fuzzer
radamsa -o 127.0.0.1:8080 -n 50 request.txt -v

-v --> verbose
-n --> number of requests (-1 or inf to try forever)