
// La recuperation des elements 
const form = document.querySelector(".form_create");
const username = document.querySelector('#inputName');
const email = document.querySelector('#inputEmail');
const password = document.querySelector('#inputPwd');
const password2 = document.querySelector('#inputConfPwd');
 const btnCreate = document.querySelector('#btn_create');

// Evenements
form.addEventListener("submit", (e) => {
    if (!form_verify()) {
      e.preventDefault();//empecher la soumission d formulaire
    } 

    // form_verify()
    // e.preventDefault();  
    
  });
       


// Fonctions
function form_verify() {
    let invalid = false;
    // Obtenir toutes les valeurs des inputs
    const userValue = username.value.trim();
    const emailValue = email.value.trim();
    const pwdValue = password.value.trim();
    const pwd2Value = password2.value.trim();
    
    // Username verify
    if (userValue === "") {
        let message ="Username cannot be empty !";
        setError(username,message);
        invalid = true;
    }else if(!userValue.match(/^[a-zA-Z]/)){
        let message ="Username must start with a letter !";
        setError(username,message)
        invalid = true;
    }else{
        let letterNum = userValue.length;
        if (letterNum < 3) {
            let message ="Username must have at least 3 characters !";
            setError(username,message)
            invalid = true;
        } else {
            setSuccess(username);
        }
    }
    
    // email verify
    if (emailValue === "") {
        let message = "Email cannot be empty !";
        setError(email,message);
        invalid = true;
    }else if(!email_verify(emailValue)){
        let message = "Invalid Email !";
        setError(email,message);
        invalid = true;
    }else{
        setSuccess(email)
    }
    
    // password verify
    if (pwdValue ==="") {
        let message ="Password cannot be empty !";
        setError(password,message)
        invalid = true;
    }else if(!password_verify(pwdValue)){
        let message = "The password is too weak (8 to 12 characters) !";
        setError(password,message)
        invalid = true;
    }else{
        setSuccess(password);
    }
    // pwd confirm
    if (pwd2Value ==="") {
        let message ="Password confirm cannot be empty !";
        setError(password2,message)
        invalid = true;
    }else if( pwdValue !== pwd2Value){
        let message ="Passwords do not match!";
        setError(password2,message)
        invalid = true;
    }else{
        setSuccess(password2)
    }
  
    return !invalid
}

function setError(elem,message) {
    const formControl = elem.parentElement;
    const small = formControl.querySelector('small');

    // Ajout du message d'erreur
    small.innerText = message

    // Ajout de la classe error
    formControl.className = "form-control error";
}

function setSuccess(elem) {
    const formControl = elem.parentElement;
    formControl.className ='form-control success'
}

function email_verify(email) {
   
    return /^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/.test(email);
}
function password_verify(passeword) {
    return /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,12}$/.test(passeword);
}
