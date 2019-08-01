import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/dark.css" // A path to the theme CSS


flatpickr(".datepicker", {
    altInput: true,
    minDate: "today",
})
