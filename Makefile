WM_VERSION=2.29.1
SLF4J_VERSION=1.7.32

CP=.:${PWD}/slf4j-simple.jar:${PWD}/slf4j-api.jar:${PWD}/wiremock.jar


default: run

run:
	@java -cp ${CP} \
          com.github.tomakehurst.wiremock.standalone.WireMockServerRunner \
          --disable-banner \
          --port 8088 \
          --verbose 

dl:
	@wget -O wiremock.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/${WM_VERSION}/wiremock-jre8-standalone-${WM_VERSION}.jar
	@wget -O slf4j-api.jar https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.32/slf4j-api-1.7.32.jar
	@wget -O slf4j-simple.jar https://repo1.maven.org/maven2/org/slf4j/slf4j-simple/1.7.32/slf4j-simple-1.7.32.jar

