
const initModal  = () => {
  const dishCard = document.querySelectorAll(".dish-card")
  const modalBox = document.querySelector(".modal-box")

  dishCard.forEach ((dish) => {
    dish.addEventListener("click", (event) => {
      modalBox.classList.toggle("display-block")
    })
  })
}

export { initModal }
