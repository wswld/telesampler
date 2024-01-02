# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install poetry

RUN poetry install

# Run bot.py when the container launches
CMD ["poetry", "run", "python", "bot.py"]
