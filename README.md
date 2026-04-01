# microservicios-eureka

`microservicios-eureka` is the service registry of the Tikitakas platform. Every backend microservice registers itself here so that the gateway and the rest of the ecosystem can discover running instances dynamically. Without Eureka, the architecture would need hardcoded service locations, which would make local development and Docker deployments much harder to manage.

This service is based on Spring Boot, Spring Cloud Netflix Eureka Server, Java 21, and Maven Wrapper. In the current `v0.1.0` setup it is one of the first containers to start, because the domain services and the gateway depend on it for service discovery. Once running, it exposes the registry dashboard and allows you to verify whether services such as `competitions`, `players`, `teams`, or `zuul` are correctly registered.

Typical local execution:

```bash
./mvnw spring-boot:run
```

Default port:

- `8761`

In Docker, the container image is built in CI and published to the configured registry, then consumed by the deployment stack. If something is wrong with service registration, this repository is one of the first places to check. A healthy Eureka instance is a prerequisite for a healthy Tikitakas backend.
