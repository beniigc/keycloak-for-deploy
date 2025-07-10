FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENV KC_HOSTNAME=keycloak-tuapp.onrender.com
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=true

RUN /opt/keycloak/bin/kc.sh build --db=postgres --features=token-exchange

EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]