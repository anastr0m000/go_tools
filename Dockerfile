# Stage 1: Build the Go application  
FROM golang:1.23 as builder

# Set the Current Working Directory inside the container  
WORKDIR /

# Install the Katana binary  
RUN go install -v github.com/tomnomnom/anew@latest
RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN go install -v github.com/owasp-amass/amass/v4/...@master
RUN go install github.com/tomnomnom/gf@latest 
RUN GO111MODULE=on go install github.com/jaeles-project/gospider@latest
RUN git clone https://github.com/rix4uni/gf-patterns.git ~/.gf

# #RUN go install -u github.com/tomnomnom/gf

RUN go install github.com/hakluke/hakrawler@latest
RUN go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
# RUN go get -u github.com/tomnomnom/assetfinder
RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN go install github.com/tomnomnom/waybackurls@latest
RUN go install github.com/lc/gau/v2/cmd/gau@latest
RUN go install github.com/hahwul/dalfox/v2@latest
RUN go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
RUN go install -v github.com/owasp-amass/amass/v4/...@master
RUN go install github.com/ffuf/ffuf/v2@latest
#RUN go install github.com/projectdiscovery/katana/cmd/katana@latest
RUN go install github.com/projectdiscovery/katana/cmd/katana@latest
RUN ls /go/bin/
# RUN go install github.com/hakluke/hakrawler@latest
# RUN go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
# # RUN go get -u github.com/tomnomnom/assetfinder
# RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
# RUN go install github.com/tomnomnom/waybackurls@latest
# RUN go install github.com/lc/gau/v2/cmd/gau@latest
# RUN go install github.com/hahwul/dalfox/v2@latest
# RUN go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
# RUN go install -v github.com/owasp-amass/amass/v4/...@master
# RUN go install github.com/ffuf/ffuf/v2@latest
# #RUN go install github.com/projectdiscovery/katana/cmd/katana@latest
# RUN go install github.com/projectdiscovery/katana/cmd/katana@latest
# Set the Current Working Directory inside the container  
# WORKDIR /

# Install the Katana binary  
# RUN go install -v github.com/tomnomnom/anew@latest
# RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
# RUN go install -v github.com/owasp-amass/amass/v4/...@master
# RUN go install github.com/tomnomnom/gf@latest 
# RUN GO111MODULE=on go install github.com/jaeles-project/gospider@latest
# RUN git clone https://github.com/rix4uni/gf-patterns.git ~/.gf

# #RUN go install -u github.com/tomnomnom/gf



# Set the Current Working Directory inside the container  
# WORKDIR /

# Install the Katana binary  
# RUN go install -v github.com/tomnomnom/anew@latest
# RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
# RUN go install -v github.com/owasp-amass/amass/v4/...@master
# RUN go install github.com/tomnomnom/gf@latest 
# RUN GO111MODULE=on go install github.com/jaeles-project/gospider@latest
# RUN git clone https://github.com/rix4uni/gf-patterns.git ~/.gf

# #RUN go install -u github.com/tomnomnom/gf
RUN go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
RUN go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
RUN go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest




