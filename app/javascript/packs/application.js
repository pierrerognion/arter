import "bootstrap";
import formValidation from '../components/formValidation';
import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css" // Note this is important!

flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "d-m-Y",})

formValidation();
