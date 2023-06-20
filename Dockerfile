FROM quay.io/debezium/connect:2.2.0.Final
ENV CONFLUENT_VERSION=7.4.0 \
    AVRO_VERSION=1.11.0 \
    GUAVA_VERSION=30.1.1-jre

RUN MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-connect-avro-converter "$CONFLUENT_VERSION" 7cb7864467453b0bff4b10bc84e75f19 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-connect-avro-data "$CONFLUENT_VERSION" 32e530a42c841ae4c830b2ef627a8b5d && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-avro-serializer "$CONFLUENT_VERSION" 6f7334fe1d7e4c0af62bf0ad3137d3a7 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-schema-serializer "$CONFLUENT_VERSION" ccec0e9caf81307b32ce4fb9281bb59b && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-schema-registry-client "$CONFLUENT_VERSION" 1b4b35aaa99854396692d765b4705f64 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent kafka-schema-converter "$CONFLUENT_VERSION" 8edc7f2e4ed7abc72682a7d30ca5d57e && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent common-config "$CONFLUENT_VERSION" 0fe5d1767ff573685a3195b3c4f460d5 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download confluent common-utils "$CONFLUENT_VERSION" 46f7b6098d48c38520381d97a58ed865 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download central org/apache/avro avro "$AVRO_VERSION" 27b149b13a0843d28bd935151db87403 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download central com/google/guava guava "$GUAVA_VERSION" 05374f163d0a4141db672fff9df95b12 && \
    MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs docker-maven-download central com/google/guava failureaccess "1.0.1" 091883993ef5bfa91da01dcc8fc52236
