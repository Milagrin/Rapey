document.querySelector('.menu-btn').addEventListener('click', () => {
   document.querySelector('.nav-menu').classList.toggle('show'); 
});

ScrollReveal().reveal('.ofertas');
ScrollReveal().reveal('.new-cards', {delay: 500});
ScrollReveal().reveal('.cards-banner-one', {delay: 500});
ScrollReveal().reveal('.new-cards2', {delay: 500});
