# nano dockerfile
	# Test New Image
	
	FROM ubuntu
	        # ubuntu 이미지를 베이스로 활용
	LABEL maintainer 123
	        # LABEL : 해당 이미지에 대한 정보 maintainer(만든사람)
	RUN apt-get update -y
	        # -y를 안붙이면 다우운로드를 받을 것인지 사용자의 입력을 기다리기떄문에 에러가 발생한다
	RUN apt-get install apache2 -y
	RUN echo "Version 2" > /var/www/html/index.html

	WORKDIR /var/www/html
	        # container가 작업하는 기본 경로

	EXPOSE 80
	        # http가 80번을 사용하기 때문에 80번 포트를 사용할 수 있도록 한다.
	CMD ["apachectl", "-DFOREGROUND"]
