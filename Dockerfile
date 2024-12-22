FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Astro project
RUN npm run build

# Expose the desired port
EXPOSE 4321

# Start the production server using preview
CMD ["npm", "run", "preview", "--", "--host"]