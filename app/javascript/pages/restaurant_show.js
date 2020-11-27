
const initModal  = () => {
  const dishCard = document.querySelectorAll(".dish-card")

  dishCard.forEach ((dish) => {
    dish.addEventListener("click", (event) => {
      const modalBox = dish.querySelector(".modal-box-total")

      // opens the modal

      // modalBox.classList.remove("display-none")
      // modalBox.classList.toggle("display-block")

      modalBox.classList.add("display-block")

      // barchart sizing
      const barChart = dish.querySelectorAll(".number-stars")
      const reviewCount = dish.querySelector("#review-count-select").innerHTML
      const reviewCountInt = parseInt(reviewCount)

      barChart.forEach((bar) => {
        const barColour = bar.querySelector(".bar-colour")
        const starsRating = bar.querySelector(".rating-count-star").innerHTML
        const starsRatingInt = parseFloat(starsRating)
        barColour.style.width = 100 * (starsRatingInt / reviewCountInt) + "%"
      })

      const favouriteButton = dish.querySelector(".fave-button")
      const linkSelect = dish.querySelector(".link-select")
      favouriteButton.addEventListener("click", (event) => {
        linkSelect.innerHTML = "ADDED TO FAVOURITES"
        linkSelect.classList.remove("link-select")
        linkSelect.classList.add("black")
       })

      // close the modal
      // const closeModal = dish.querySelector(".close-modal")
      // closeModal.addEventListener("click", (event) => {
      //   modalBox.classList.remove("display-block")
      //   modalBox.classList.add("display-none")
      // })
    })


  })
}



export { initModal }
