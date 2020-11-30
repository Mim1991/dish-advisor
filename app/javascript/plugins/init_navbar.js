 const prevScrollpos = () => {
  var scrollpos = window.pageYOffset;
  window.onscroll = function() {
    var currentScrollPos = window.pageYOffset;
    if (scrollpos > currentScrollPos) {
      document.querySelector(".navbar").style.top = "0";
    } else {
      document.querySelector(".navbar").style.top = "-50px";
    }
    scrollpos = currentScrollPos;
  }
 }

export { prevScrollpos };
