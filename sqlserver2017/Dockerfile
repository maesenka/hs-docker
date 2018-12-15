FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

ENV ACCEPT_EULA=y  \ 
    SA_PASSWORD=Yu89!ieP \
    MSSQL_PID=Express


COPY ["*.sql", "entrypoint.sh", "setup.sh", "/app/"] 
RUN chmod -R +x /app/*.sh

EXPOSE 1433
CMD /bin/bash /app/entrypoint.sh
