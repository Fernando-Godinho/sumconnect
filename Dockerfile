FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY Site/apresentacao_comercial_sum_connect.html /usr/share/nginx/html/index.html
COPY Site/apresentacao_n8n_leads.html /usr/share/nginx/html/
COPY Site/capa.png /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
