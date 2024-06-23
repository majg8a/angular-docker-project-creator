FROM node:22-alpine

RUN npm install -g @angular/cli@17

WORKDIR /
RUN mkdir angular-app
WORKDIR /angular-app

ENV APP_NAME 'app-name'
ENV ROUTING 'true'
ENV STYLE 'css'
ENV STRICT 'false'
ENV TEMPLATE true 
ENV STANDALONE 'true'
ENV SKIP_TESTS 'true'

CMD ng new $APP_NAME --routing=$ROUTING --standalone=$STANDALONE --strict=$STRICT --style=$STYLE --skip-tests=$SKIP_TESTS -t -s\
    && mv $APP_NAME/* . \
    && rm -rf $APP_NAME \
    && ng serve --host 0.0.0.0 --port 4200

EXPOSE 4200