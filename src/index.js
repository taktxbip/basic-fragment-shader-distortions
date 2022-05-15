'strict';
import Sketch from './js/Sketch';

import './scss/main.scss';

import img0 from './assets/alexander-wende.jpg';
import img1 from './assets/jezael-melgoza.jpg';
import img2 from './assets/lucas-gouvea.jpg';
import img3 from './assets/oleg-onchky.jpg';

(function () {
    window.addEventListener('DOMContentLoaded', (e) => {
        new Sketch({
            dom: document.getElementById('container')
        });

    });
})();
