from app import app
from flask import jsonify, request

@app.route('/')
def heelo():
	resp = jsonify('Hello, World!')
	resp.status_code = 200
	return resp
		
if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
