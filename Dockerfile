FROM wyracocha/huguito:v1.0.0 AS BUILDER

WORKDIR /site
ADD website /site/
RUN ls /site
RUN hugo --minify -b https://devrev.wyracocha.com

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=BUILDER /site/public .