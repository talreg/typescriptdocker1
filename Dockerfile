FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g typescript
COPY tsconfig.json .
COPY ./src ./src
RUN tsc
CMD ["node", "./dist/index.js"]
