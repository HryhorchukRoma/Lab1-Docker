
FROM nginx:latest

LABEL maintainer="WebLab"
LABEL description="Static WebLab website for Docker laboratory work"

COPY index.html /usr/share/nginx/html/index.html
COPY about.html /usr/share/nginx/html/about.html
COPY services.html /usr/share/nginx/html/services.html
COPY styles.css /usr/share/nginx/html/styles.css

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
