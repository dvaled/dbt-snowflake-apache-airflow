FROM quay.io/astronomer/astro-runtime:12.2.0

RUN python -m venv dbt_env && \
    source dbt_env/bin/activate && \
    pip install --no-cache-dir dbt-snowflake astronomer-cosmos && \
    deactivate
