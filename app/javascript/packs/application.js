import "bootstrap";
import { tooltip } from '../components/tooltip'

import "../plugins/flatpickr"
import { imagescroll } from '../components/imagescroll'

import { initAutocomplete } from '../plugins/init_autocomplete'

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import { loadDynamicBannerText } from '../plugins/type';

initMapbox();
tooltip();
imagescroll();
initAutocomplete();
loadDynamicBannerText();
