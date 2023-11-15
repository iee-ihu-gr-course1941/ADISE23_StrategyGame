document.addEventListener('DOMContentLoaded', function() {
    const registrationForm = document.getElementById('registration-form');

    registrationForm.addEventListener('submit', function(event) {
        event.preventDefault();

        const formData = new FormData(registrationForm);

        fetch('http://127.0.0.1:5500/auth/register.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            const messageElement = document.getElementById('message');
            if (data.success) {
                messageElement.textContent = 'Registration successful. Redirecting to login...';
                setTimeout(() => {
                    window.location.href = 'login.html';
                }, 2000);
            } else {
                messageElement.textContent = 'Registration failed: ' + data.message;
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    });
});
