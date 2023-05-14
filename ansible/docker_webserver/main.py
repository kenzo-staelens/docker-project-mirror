from flask import Flask, render_template
import sys
app = Flask(__name__)
import os

hostname = os.environ['HOSTNAME']
name = os.environ['NAME'] if 'NAME' in os.environ else 'name'

@app.route('/')
def home():
   return render_template(sys.argv[1]+'.html', host=hostname, user=name)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")