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

// initSweetalert('#sweet-alert-destroy', {
//   title: "Attention!",
//   text: "You are about to delete this venue! Continue?",
//   icon: "warning",
//   button: "Got it!",
//   closeOnClickOutside: false
// }, (value) => {
//   if (value) {
//     const link = document.querySelector('#go-to-link');
//     link.click();
//   }
// });

