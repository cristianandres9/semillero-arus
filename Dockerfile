FROM node
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . /app/
EXPOSE 6000
CMD ["npm","start"]