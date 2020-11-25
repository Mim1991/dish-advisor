
const initModal  = () => {
  const dishCard = document.querySelectorAll(".dish-card")


  dishCard.forEach ((dish) => {
    dish.addEventListener("click", (event) => {
      const modalBox = dish.querySelector(".modal-box-total")
      modalBox.classList.toggle("display-block")
      const barChart = dish.querySelectorAll(".number-stars")
      console.log(barChart)
      barChart.forEach((bar) => {
        const barColour = bar.querySelector(".bar-colour")
        const starsRating = bar.querySelector(".rating-count-star").innerHTML
        const starsRatingInt = parseInt(starsRating)
        barColour.style.width = 14 * starsRatingInt + "%"
      })
    })
  })
}

export { initModal }
