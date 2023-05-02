# Use the official Ruby image as the base image
FROM ruby:3.1

# Set the working directory inside the container
WORKDIR /app

# Update package lists and install necessary dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Install Rails as a global dependency
RUN gem install rails

# Copy the Gemfile and Gemfile.lock from your Rails app into the container
COPY Gemfile* /app/

# Install Ruby gems
RUN bundle install

# Copy the rest of the application code into the container
COPY . /app

# Expose the port your Rails app will run on
EXPOSE 3000

# Execute the following commands in a single RUN instruction
# This ensures the commands are executed in the same container layer,
# and the container remains self-contained
RUN chmod +x /app/tmp \
  && rm -f /app/tmp/pids/server.pid \
  && bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:setup

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
