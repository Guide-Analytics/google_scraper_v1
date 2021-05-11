FROM apify/actor-node-chrome-xvfb

# Set hosting
ENV PORT=8080
ENV HOST=0.0.0.0

# Copy source code
COPY . ./

# Set hosting
ENV PORT=8080
ENV HOST=0.0.0.0

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
# Set hosting
ENV PORT=8080
ENV HOST=0.0.0.0


# No CMD here because xvfb does its own thing
