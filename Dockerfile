FROM tutum/lamp:latest
RUN rm -rf /app
COPY src /app
RUN chmod 777 /app \
    && chmod 777 /app/config.php \
    && chmod 777 -R /app/content
EXPOSE 80 3306
CMD ["/run.sh"]
