# Sonar Scanner image

## About the image
This image lies on `node:alpine` for the lightweight.
And contains a OpenJDK JRE for running sonar scanner.
And a global TypeScript for interpret TS codes.
These options are provide a wide scale scanning purpose.
Note: this image doesn't contain an entrypoint (because CIs),
but you can run in first option (Usage section) and 
provide all settings in a sonar-project.settings file,
or you can add parameters such as second option, please follow the refer.

## Arguments and environments (build only)

`SONAR_SCANNER_VERSION` defines a sonar scanner version and has a default value,
and most use cases are not modified.

## Usage (args are optional)

If you want, you can override default setting by CLI or `sonar-project.properties` file (see the refer below)

```bash
docker run --rm -v `pwd`:/tmp/src vpeti88/sonarscanner
docker run --rm -v `pwd`:/tmp/src vpeti88/sonarscanner sonar-scanner [args]
```

## Default runtime setting is:

`projectBaseDir=/tmp/src`

Docker: https://hub.docker.com/r/vpeti88/sonarscanner/

Refer: https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner
