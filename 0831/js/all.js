function toggleMenu() {
    var menuToggle = document.querySelector('.toggle');
    var header = document.querySelector('.header__inner');
    menuToggle.classList.toggle('active');
    header.classList.toggle('active');
}