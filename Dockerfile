FROM ubuntu:22.04

# Set Environment Variables to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Run the installation logic
RUN apt-get update && apt-get install -y curl wget gnupg2 sudo ca-certificates
RUN curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | bash
RUN apt-get install -y pufferpanel
RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/playit.gpg > /dev/null && \
    echo "deb [arch=amd64] https://playit-cloud.github.io/ppa/data ./" | tee /etc/apt/sources.list.d/playit.list && \
    apt-get update && apt-get install -y playit

# Create the admin user during the image build
# Replace 'admin' and 'password' with your desired credentials
RUN /usr/sbin/pufferpanel user add --email admin@render.local --name admin --password MySecurePassword123 --admin true

EXPOSE 8080 5657 25565

# Start both services
CMD pufferpanel run & playit --secret $PLAYIT_SECRET
