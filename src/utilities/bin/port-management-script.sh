#!/bin/bash

DEFAULT_HTTP_PORT="8089"

http_port()
{
        port="$(snapctl get ports.http)"
        if [ -z "$port" ]; then
                port="$DEFAULT_HTTP_PORT"
                set_http_port $port
        fi
        echo "$port"
}

set_http_port()
{
        snapctl set ports.http="$1"
}
