FROM rabbitmq:3.11-management

RUN apt-get update && \
apt-get install -y curl

RUN curl -L https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez > /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.11.1.ez

WORKDIR /opt/rabbitmq

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

EXPOSE 8080