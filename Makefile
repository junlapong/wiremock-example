WM_VERSION=2.29.1

default: run

run:
	@java -jar wiremock.jar \
          --disable-banner \
          --port 8088 \
          --verbose 

dl:
	@wget -O wiremock.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/${WM_VERSION}/wiremock-jre8-standalone-${WM_VERSION}.jar

