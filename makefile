DIR_CONF = /Users/paul/github/nginx-docker-cors/conf
DIR_HTML = /Users/paul/github/nginx-docker-cors/html

default:
	@echo targets run

run:
	docker run -p 60050:80 \
          -v $(DIR_CONF):/etc/nginx/conf.d/:ro \
          -v $(DIR_HTML):/usr/share/nginx/html:ro -d nginx

test:
	open http://localhost:60050

