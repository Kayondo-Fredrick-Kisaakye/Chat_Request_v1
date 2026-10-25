const form = document.querySelector('#freemium-request-form');

if (form) {
    form.addEventListener('submit', (event) => {
        event.preventDefault();

        const request = Object.fromEntries(new FormData(form));
        sessionStorage.setItem('chatRequest', JSON.stringify(request));
        form.reset();
        alert('Your freemium request was sent.');
    });
}
