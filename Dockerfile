FROM postgres:18.4

RUN apt-get update && apt-get install -y --no-install-recommends postgresql-18-cron

CMD ["postgres", "-c", "shared_preload_libraries=pg_cron", "-c", "cron.database_name=postgres"]
