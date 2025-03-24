# From node:18

# WORKDIR /app 

# COPY package.json . 

# RUN npm install 

# COPY . .

# EXPOSE 3000

# CMD [ "npm","start" ]


# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the entire application
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application, cmd is entry points that will run the appn in container
CMD ["npm", "start"] 
