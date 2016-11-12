FROM node:onbuild
WORKDIR /usr/src/app/
COPY credentials/* /root/.aws/
ENTRYPOINT ["bash","entrypoint.sh"]
