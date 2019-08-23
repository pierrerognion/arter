const formFocusInteger = () => {

  document.querySelectorAll('.form-group.integer input').forEach(function(element) {
    element.addEventListener('focus', (event) => {
      event.target.parentElement.classList.add("fgroup-focus");
    });

      element.addEventListener('blur', (event) => {
        if (element.value.length < 1) {
          event.target.parentElement.classList.remove("fgroup-focus");
        }
      });
  });
}

export default formFocusInteger;
