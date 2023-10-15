# Use an official Node.js runtime as a parent image
FROM node:18.16.1

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install


# Copy the rest of the application code to the working directory
COPY . .


# Expose the port your Next.js app runs on (usually 3000)
EXPOSE 8080

# Start the Next.js app
CMD ["npm", "sevre"]