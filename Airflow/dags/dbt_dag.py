from airflow.sdk import dag, task
from pendulum import datetime

@dag(
        schedule="@daily",
        start_date=datetime(year = 2026, month = 6, day = 24),
        is_paused_upon_creation=False,
)
def dbt_dag():

    @task.bash()
    def dbt_build():
        
        return """
        dbt build \
            --project-dir /opt/airflow/ELT \
            --profiles-dir /opt/airflow/ELT
        """

    dbt_build()

dbt_dag()