FROM node:22.2.0-alpine

RUN mkdir -p /usr/src/simru-fe
WORKDIR /usr/src/simru-fe
COPY . .
RUN npm install
# RUN npm npm cache clean
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "preview"]