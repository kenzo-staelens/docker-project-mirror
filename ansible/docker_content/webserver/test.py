from flask import Flask
app = Flask(__name__)
import os

hostname = os.environ['HOSTNAME']
name = os.environ['NAME'] if 'NAME' in os.environ else 'name'

@app.route('/')
def home():
   return "host: %s<br>custom name: %s<br><br>this is test" % (hostname, name)

if __name__ == "__main__":
    app.run(debug=True)