function submitForm() {
    const form = document.getElementById('contact-form');
    const formData = new FormData(form);

    fetch('submit-form.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById('form-response').innerText = data;
    })
    .catch(error => console.error('Error:', error));
}

function goToAbout() {
    window.location.href = 'index.html';
}

function goToProjects() {
    window.location.href = 'projects.html';
}

function goToContact() {
    window.location.href = 'contact.html';
}
