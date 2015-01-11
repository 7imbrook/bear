FROM node

WORKDIR /bear

COPY package.json /bear/package.json
RUN npm install

ENV HUBOT_IRC_SERVER irc.freenode.net
ENV HUBOT_IRC_ROOMS #secronym
ENV HUBOT_IRC_NICK bear

# Clean up copy...
ADD . /bear

ENTRYPOINT ["/bear/entrypoint.sh"]
CMD ["/bear/bin/hubot","-a","irc","--name","bear"]
