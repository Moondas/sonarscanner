FROM node:alpine as node-java

RUN apk --update add openjdk8-jre

FROM node-java as ci-sonar-scanner

ARG SONAR_SCANNER_VERSION
ENV SONAR_SCANNER_VERSION=${SONAR_SCANNER_VERSION:-3.2.0.1227}

ADD "https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip" /

RUN unzip "sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip" \
	&& rm /sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
	&& npm i -g typescript

ENV PATH "/sonar-scanner-${SONAR_SCANNER_VERSION}/bin:${PATH}"

WORKDIR /tmp/src

CMD [ "sonar-scanner", "-Dsonar.projectBaseDir=/tmp/src" ]
