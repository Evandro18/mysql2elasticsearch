FROM docker.elastic.co/logstash/logstash:7.2.1

RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-aggregate
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-jdbc_streaming
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-mutate
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-ruby

COPY ./drivers/mysql-connector-java-8.0.16.jar /usr/share/logstash/logstash-core/lib/jars/mysql-connector-java.jar