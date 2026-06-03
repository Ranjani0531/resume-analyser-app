const form = document.getElementById("uploadForm");
form.addEventListener("submit", 
    
    async(e) => {
    e.preventDefault();
    const fileInput = document.getElementById("resume");
    const formData = new FormData();
    formData.append("resume", fileInput.files[0]);

    const response = await fetch('/upload', {
      method: "POST",
      body: formData
    });

    const data = await
    response.json();

    document.getElementById('result').innerHTML = `
                <h3> Result </h3>
                <p> Filename: ${data.filename} </p>
                 <p> Score: ${data.score} </p>
                 <p> Result: ${data.result} </p>
    `;

});