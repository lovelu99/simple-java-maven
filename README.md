# Simple Java Web App (Tomcat)

A minimal Maven **WAR** project that runs on **Apache Tomcat**.

## What it includes
- `GET /hello?name=...` servlet endpoint (plain text)
- `index.jsp` welcome page
- Unit tests with JUnit 5
- A simple curl-based smoke test script

## Prerequisites
- Java 11+ (works with newer too)
- Maven 3.x
- Apache Tomcat 9.x (Tomcat 10 uses `jakarta.servlet.*` and needs different dependencies)

## Build
```bash
mvn clean test
mvn clean package
```

This creates:
- `target/simple-webapp.war`

## Deploy to Tomcat
Copy the WAR into Tomcat's `webapps/` directory, then start Tomcat.

Example:
```bash
cp target/simple-webapp.war /path/to/tomcat/webapps/
# start tomcat (bin/startup.sh on Linux/macOS, startup.bat on Windows)
```

Tomcat will deploy it at context path `/simple-webapp`.

## Try it
- Home page:
  - `http://localhost:8080/simple-webapp/`
- Servlet:
  - `http://localhost:8080/simple-webapp/hello`
  - `http://localhost:8080/simple-webapp/hello?name=Aayan`

## Smoke test
After deploying on Tomcat:
```bash
./scripts/smoke-test.sh http://localhost:8080 simple-webapp
```
