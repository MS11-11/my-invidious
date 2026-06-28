FROM quay.io/invidious/invidious:latest

RUN echo "db:" > /invidious/config/config.yml && \
    echo "  url: $DATABASE_URL" >> /invidious/config/config.yml && \
    echo "check_version: false" >> /invidious/config/config.yml && \
    echo "api_page: true" >> /invidious/config/config.yml && \
    echo "transparent_privacy_report: false" >> /invidious/config/config.yml && \
    echo "hmac_key: $HMAC_KEY" >> /invidious/config/config.yml