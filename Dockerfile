FROM python:3.10.6-slim

# Install app
COPY . /usr/app
WORKDIR /usr/app

# show data 
EXPOSE 8000

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Run Battlesnake
CMD [ "python", "main.py" ]
