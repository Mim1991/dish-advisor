const discoverFav = () => {
  const heartIcons = document.querySelectorAll(".fa-heart")
  if(heartIcons){
    heartIcons.forEach((heart) => {
      console.log(heart)
      heart.addEventListener('click', event => {
        heart.classList.remove("fa-heart")
        heart.classList.remove("far")
        heart.classList.add("fas")
        heart.classList.add("fa-heart")
        heart.style.color = "#efac2c78"
      })
    })
  }
}

export { discoverFav }
