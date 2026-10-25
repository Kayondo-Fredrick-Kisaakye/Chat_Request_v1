const requestForm = document.querySelector('#premium-request-form');
const paymentForm = document.querySelector('#payment-form');

if (requestForm) {
    requestForm.addEventListener('submit', (event) => {
        event.preventDefault();

        const request = Object.fromEntries(new FormData(requestForm));
        sessionStorage.setItem('chatRequest', JSON.stringify(request));
        window.location.href = 'finishpayment.html';
    });
}

if (paymentForm) {
    paymentForm.addEventListener('submit', (event) => {
        event.preventDefault();

        const message = document.querySelector('#payment-message');
        sessionStorage.removeItem('chatRequest');
        paymentForm.reset();
        message.textContent = 'Payment received. Your premium request is confirmed.';
    });
}
