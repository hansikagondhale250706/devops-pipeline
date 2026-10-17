# Use lightweight Node Alpine base image
FROM node:18-alpine

# Set application directory
WORKDIR /app

# Copy dependency files and install production dependencies
COPY package*.json ./
RUN npm install --production

# Copy application files
COPY . .

# Expose port
EXPOSE 3000

# Start command
CMD ["npm", "start"]