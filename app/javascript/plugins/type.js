import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find an island ye like ^700", "Choose ye transportation method ^700", "Book ye retreat ^700", "Are ye ready for an adventure ^700"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
