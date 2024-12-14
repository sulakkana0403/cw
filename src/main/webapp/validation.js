// validation.js

function validateForm() {
    // Get form elements
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var message = document.getElementById('message').value;

    // Validate name
    if (name == "") {
        alert("Name is required.");
        return false;
    }

    // Validate email (basic pattern)
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (email == "") {
        alert("Email is required.");
        return false;
    } else if (!emailPattern.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Validate message
    if (message == "") {
        alert("Message is required.");
        return false;
    }

    // If all validations pass
    return true;
}
