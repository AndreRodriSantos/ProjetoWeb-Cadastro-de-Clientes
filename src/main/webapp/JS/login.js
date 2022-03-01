const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const contaier = document.querySelector(".container");

sign_up_btn.addEventListener('click',()=>{
    contaier.classList.add("sign-up-mode");
});
sign_in_btn.addEventListener('click',()=>{
    contaier.classList.remove("sign-up-mode");
});
