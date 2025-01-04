# Use the ARM64 architecture version of Ubuntu
FROM arm64v8/ubuntu:latest

# Set environment variables
ENV TERRARIA_VERSION="1.4.4.9"

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget unzip mono-complete

# Set the working directory
WORKDIR /terraria

# Download Terraria server zip file using the correct URL
RUN wget https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip

# Unzip the Terraria server zip file
RUN unzip terraria-server-1449.zip && \
    rm terraria-server-1449.zip

# Verify contents of the directory to ensure the executable exists
RUN ls -l /terraria/1449/Linux

# Make the server executable
RUN chmod +x ./1449/Linux/TerrariaServer ./1449/Linux/TerrariaServer.bin.x86_64

# Expose the default Terraria server port
EXPOSE 7777

# Start the Terraria server using mono
#CMD ["mono", "--server", "--gc=sgen", "-O=all", "./1449/Linux/TerrariaServer.exe"]
