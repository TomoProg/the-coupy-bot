FROM nginx:1.13.5
MAINTAINER TomoProg <helloworld0306.xxx@gmail.com>
RUN apt-get update && apt-get install -y \
	vim-tiny
ADD conf.d/app.conf /etc/nginx/conf.d/app.conf
