
const initModal  = () => {
  const dishCard = document.querySelectorAll(".dish-card")

  dishCard.forEach ((dish) => {
    dish.addEventListener("click", (event) => {
      const modalBox = dish.querySelector(".modal-box-total")
      const screenOverlay = dish.querySelector(".screen-overlay")
      modalBox.classList.toggle("display-block")
      screenOverlay.classList.toggle("display-block")

      const barChart = dish.querySelectorAll(".number-stars")
      const reviewCount = dish.querySelector("#review-count-select").innerHTML
      const reviewCountInt = parseInt(reviewCount)

      barChart.forEach((bar) => {
        const barColour = bar.querySelector(".bar-colour")
        const starsRating = bar.querySelector(".rating-count-star").innerHTML
        const starsRatingInt = parseFloat(starsRating)
        barColour.style.width = 100 * (starsRatingInt / reviewCountInt) + "%"
      })
    })
  })
}



export { initModal }
