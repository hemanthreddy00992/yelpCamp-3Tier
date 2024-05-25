#Using 18-alpine image as a base image
FROM node:18-alpine

# Setting work directory as /app/node_app
WORKDIR /app/node_app

#Copying package.json and package-lock.json to the present directory (/app/node_app)
COPY package*.json ./

# running npm install while building the image to install dependencies
RUN npm install

# Copying the remaining src files to PWD
COPY . .

# Exposing port as 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

# Start the application
#CMD npm start

# Start the application if we know the single point of entry
#CMD ["node", "app.js"]
