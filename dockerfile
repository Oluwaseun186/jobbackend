FROM node:18-alpine

WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install all dependencies (including dev dependencies)
RUN npm install

# Copy source code
COPY . .

EXPOSE 3000

# Use nodemon for development with hot reload
CMD ["npx", "nodemon", "server.js"]