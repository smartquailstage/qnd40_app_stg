server {
    listen                     ${LISTEN_PORT};
    server_name                127.0.0.1 localhost 0.0.0.0; 
    
location /static {
    alias /qnd40_app_stg/qnd40_app_stg/qnd40_app_stg/staticfiles;
    client_max_body_size    1000M;
}

location /media {
    alias  /qnd40_app_stg/qnd40_app_stg/qnd40_app_stg/media;
    client_max_body_size    1000M;
}

location / {
    uwsgi_pass              ${APP_HOST}:${APP_PORT};
    include                 /etc/nginx/uwsgi_params;
    client_max_body_size    1000M;
    }    

}


    




