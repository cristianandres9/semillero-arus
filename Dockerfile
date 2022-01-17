FROM node
WORKDIR /app
COPY package.json package.json
RUN npm install
RUN apt update
RUN apt install vim --yes
COPY . /app/
EXPOSE 6000
CMD ["npm","start"]
