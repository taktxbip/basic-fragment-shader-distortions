'strict';
import Merge from './js/Merge';

import './scss/main.scss';

import './images/alexander-wende.jpg';
import './images/beach.jpg';
import './images/jezael-melgoza.jpg';
import './images/legs.jpg';
import './images/lucas-gouvea.jpg';
import './images/ocean.jpg';
import './images/oleg-onchky.jpg';
import './images/photo.jpg';
import './images/font.jpg';

(function () {
    window.addEventListener('DOMContentLoaded', (e) => {

        new Merge({
            dom: document.getElementById('container'),
            imagesQuery: 'img'
        });
    });
})();
