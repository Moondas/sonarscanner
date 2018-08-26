# Sonar Scanner image

## Arguments and environments (build only)

`SONAR_SCANNER_VERSION` defines a sonar scanner version and has a default value,
and most use cases are not modified.

## Usage (args are optional)

If you want, you can override default setting by CLI or `sonar-project.properties` file (see the refer below)

```bash
docker run --rm -v `pwd`:/tmp/src vpeti88/sonarscanner [args]
```

## Default runtime setting is:

`projectBaseDir=/tmp/src`

Docker: https://hub.docker.com/r/vpeti88/sonarscanner/

Refer: https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner
