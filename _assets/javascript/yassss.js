//= require ./shared
//= require ./sections

// ---------------------------------------------- first-load boilerplate stuff below

// fire once DOM is loaded
function ready(fn) { // eslint-disable-line no-unused-vars
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', fn)
  } else {
    fn()
  }
}
