FROM quay.io/invidious/invidious:latest

RUN printf 'db:\n  url: "postgresql://postgres:MadoSecurePass1111@db.tjnfnhqerkipjawntdbn.supabase.co:6543/postgres?sslmode=disable"\ncheck_version: false\napi_page: true\ntransparent_privacy_report: false\nhmac_key: "MadoScientistoElevenElevenAbsoluteSecretKeyNinetyNine"\n' > /invidious/config/config.yml