FROM nginx:alpine
# apk upgrade : sweep CVE 11/2026 — purge les KEV brotli/libxslt embarqués dans la base alpine
RUN apk upgrade --no-cache
COPY site/ /usr/share/nginx/html/
