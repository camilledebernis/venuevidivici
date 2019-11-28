import "bootstrap";

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Congratulations!",
  text: "You have successfully booked your Venue!",
  icon: "success",
  button: "Got it!",
  closeOnClickOutside: false
}, (value) => {
  if (value) {
    const link = document.querySelector('#go-to-link');
    link.click();
  }
});


// initSweetalert('#sweet-alert-demo', {
//   title: "Are you sure?",
//   text: "This action cannot be reversed",
//   icon: "warning"
// }, (value) => {
//   if (value) {
//     const link = document.querySelector('#go-to-link');
//     link.click();
//   }
// });
