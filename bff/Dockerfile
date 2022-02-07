FROM packages.vaudoise.ch/dockerhub/node:lts-alpine as production-stage

ARG RUNNING_ENV="local"

COPY ./build/checked-out_sources/timbrage-against-the-machine-bff/src/package.json .

COPY ./build/certificates/vaudoise.cer .

# should we install the vaudoise certificates ?
RUN if [ $RUNNING_ENV = "local" ]; then \
      npm set cafile ./vaudoise.cer && \
      npm set registry https://packages.vaudoise.ch/artifactory/api/npm/npm-repo; \
    fi;

RUN npm i

COPY ./build/checked-out_sources/timbrage-against-the-machine-bff/src/ .

EXPOSE 3000

CMD ["npm", "start"]