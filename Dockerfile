# Step 1: Use Node.js image from Docker Hub
FROM node:18

# Step 2: Create a folder inside the container for app
WORKDIR /app

# Step 3: Copy dependency file and install packages
COPY package*.json ./
RUN npm install

# Step 4: Copy all project files into container
COPY . .

# Step 5: Expose port 3000 (our app runs on this)
EXPOSE 3000

# Step 6: Start application
CMD ["npm", "start"]
