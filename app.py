from flask import Flask, request, jsonify, send_from_directory
import os
app = Flask(__name__)
UPLOAD_FOLDER = 'uploads'
os.makedirs(UPLOAD_FOLDER, exist_ok =True)
@app.route('/')
def home():
    return send_from_directory('.','index.html')
@app.route('/style.css')
def style():
    return send_from_directory('.','style.css')
@app.route('/script.js')
def script():
    return send_from_directory('.','script.js')
@app.route('/upload',methods= ['POST'])
def upload_resume():
    if 'resume' not in request.files:
        return jsonify({'error': 'no file upoaded'})
    file = request.files['resume']
    filepath = os.path.join(UPLOAD_FOLDER, file.filename)
    file.save(filepath)
    with open(filepath, 'rb') as f:
        content = str(f.read()).lower()
    score = 0
    skills = ['python', 'docker', 'kuberbetes', 'terraform', 'ansible']
    for skill in skills:
        if skill in content:
            score += 20
    result = "good resume" if score >=60 else "needs improvement"
    return jsonify({
        'filename': file.filename,
        'score': score,
        'result': result
    }) 
if __name__ == '__main__':
    app.run(host="0.0.0.0", port = 5000)
