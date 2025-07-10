FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["sh", "-c", "/opt/keycloak/bin/kc.sh start --http-port=$PORT --cache=local --hostname-strict=false --hostname-strict-https=false"]