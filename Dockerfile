FROM apify/actor-node-chrome-xvfb

# Copy source code
COPY . ./

# Install default dependencies, print versions of everything
RUN npm --quiet set progress=false \
 && npm install --only=prod --no-optional \
 && echo "Installed NPM packages:" \
 && npm list \
 && echo "Node.js version:" \
 && node --version \
 && echo "NPM version:" \
 && npm --version
 
ENV APIFY_DISABLE_OUTDATED_WARNING=1

# No CMD here because xvfb does its own thing
