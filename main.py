from flask import Flask
app = Flask(__name__)
import os
env1 = os.environ['ENV_1'] if 'ENV_1' in os.environ else 'env1'
env2 = os.environ['ENV_2'] if 'ENV_2' in os.environ else 'env2'

@app.route('/')
def home():
   return "env1: %s<br>env2: %s" % (env1, env2)

if __name__ == "__main__":
    app.run(debug=True)