FROM ruby:3.0.2

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential libpq-dev nodejs

# Set working directory
WORKDIR /app

# Copy application code
COPY . .

# Install gems
RUN bundle install

# Expose port 3000
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
