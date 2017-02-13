This is a simple nginx container that can be used to redirect all incoming traffic to another URL.

    docker run --name=nginx-redirector -p 8080:80 -d \
        -e REDIRECTOR_DESTINATION=http://some-domain.com \
        -e REDIRECTOR_TYPE=temporary \
        jfchevrette/nginx-redirector

_REDIRECTOR_TYPE_ can be set to either **temporary** or **permanant**