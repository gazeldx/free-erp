FROM ruby

# Copy the Gemfile and Gemfile.lock into the image and bundle install for
# caching the gems.
# Temporarily set the working directory to where they are.
WORKDIR /tmp
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World

# Run rails server when the container launches
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
