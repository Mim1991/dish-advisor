const initTopRated = () => {
  const topDish = document.querySelector(".restaurant-dish-grid")
  if(topDish) {
  topDish.children[1].classList.add('top-rated-dish')
  }
}

const initMostReviews = () => {
  const mostRevDish = document.querySelector(".most-reviews-dish")
  if(mostRevDish){
  mostRevDish.insertAdjacentHTML( 'afterBegin', '<div class="most-reviewed-position"><p><i class="fas fa-fire-alt" id="flag-colour-size"></i>Most Reviewed</p></div>')
  // const linkButton = document.querySelector(".most-reviews-dish a")
  // linkButton.style.border = "2px solid #7468DA"
  }
}

const initCriticChoice = () => {
  const criticChoice = document.querySelector(".critics-choice-dish")
  if(criticChoice){
  criticChoice.insertAdjacentHTML( 'afterBegin', '<div class="critics-choice-position"><p><i class="fas fa-fire-alt" id="flag-colour-size"></i>Critics Choice</p></div>')
  // const linkButton = document.querySelector(".critics-choice-dish a")
  // linkButton.style.border = "2px solid blue"
  }
}



const initModal  = () => {
  const dishCard = document.querySelectorAll(".dish-card")
  const screenOverlay = document.querySelector(".screen-overlay")





  dishCard.forEach ((dish) => {
    const modalBox = dish.querySelector(".modal-box-total")

    dish.addEventListener("click", event => {
      const modalCloseBtn = dish.querySelector(".close-modal")
      if (modalBox.classList.contains("display-none")) {
        modalBox.classList.remove("display-none")
        modalBox.classList.add("display-block")
      }

      modalCloseBtn.addEventListener("click", event => {
        event.stopPropagation()
        modalBox.classList.remove("display-block")
        modalBox.classList.add("display-none")
      })


      // barchart sizing
      const barChart = dish.querySelectorAll(".number-stars")
      const reviewCount = dish.querySelector("#review-count-select")
      if (reviewCount) {
        const reviewCountInt = parseInt(reviewCount.innerHTML)

        barChart.forEach((bar) => {
          const barColour = bar.querySelector(".bar-colour")
          const starsRating = bar.querySelector(".rating-count-star").innerHTML
          const starsRatingInt = parseFloat(starsRating)
          barColour.style.width = 100 * (starsRatingInt / reviewCountInt) + "%"
        })
      }

      const favouriteButton = dish.querySelector(".fave-button")
      const linkSelect = dish.querySelector(".link-select")
      favouriteButton.addEventListener("click", (event) => {
        if (linkSelect) {
          linkSelect.innerHTML = "ADDED TO FAVOURITES"
          linkSelect.classList.remove("link-select")
          linkSelect.classList.add("black")
        }
       })
    })

  })
}



export { initModal }
export { initTopRated }
export { initMostReviews }
export { initCriticChoice }
