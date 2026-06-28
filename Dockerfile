FROM quay.io/invidious/invidious:latest

# تعريف المتغيرات التي سيتم سحبها من منصة ريندر أثناء البناء
ARG INVIDIOUS_DATABASE_URL
ARG INVIDIOUS_HMAC_KEY

# بناء ملف الإعدادات ديناميكياً بمسافات نظام الـ Linux الصافية
RUN printf 'db:\n  url: "%s"\ncheck_version: false\napi_page: true\ntransparent_privacy_report: false\nhmac_key: "%s"\n' \
    "$INVIDIOUS_DATABASE_URL" "$INVIDIOUS_HMAC_KEY" > /invidious/config/config.yml