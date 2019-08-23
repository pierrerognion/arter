import "bootstrap";
import formValidation from '../components/formValidation';
import formFocus from '../components/formFocus';
import formFocusText from '../components/formFocusText';
import formFocusInteger from '../components/formFocusInteger';
import flatpickr from "flatpickr"
import "../../assets/stylesheets/components/_flatpicker.scss" // Note this is important!
import { French } from "flatpickr/dist/l10n/fr.js"


flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "d-m-Y",
    mode: "range",
    "locale": French })

formValidation();
formFocus();
formFocusText();
formFocusInteger();
