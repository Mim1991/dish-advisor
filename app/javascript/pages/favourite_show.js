const levelUp = () => {
  const levelCountUp = document.querySelector(".rev-count > h2")
  const levelCountNum = parseInt(levelCountUp.innerHTML)
  const barFill = document.querySelector(".bar-colour-user")

  barFill.style.width = (33.3 * (levelCountNum % 3))  + "%";

  // change the levels in p tags

  const levelLeft = document.querySelector("#level-left")
  const levelRight = document.querySelector("#level-right")

    if(levelCountNum < 3) {
    levelLeft.innerText = "LV1"
    levelRight.innerText = "LV2"
  } else if ((levelCountNum < 6) && (levelCountNum >= 3)){
    levelLeft.innerText = "LV2"
    levelRight.innerText = "LV3"
  } else if((levelCountNum < 9) && (levelCountNum >= 6)) {
    levelLeft.innerText = "LV3"
    levelRight.innerText = "LV4"
  } else if((levelCountNum < 12) && (levelCountNum >= 9)) {
    levelLeft.innerText = "LV4"
    levelRight.innerText = "LV5"
  } else {
    levelLeft.innerText = "LV5"
    levelRight.innerText = "MAX"
  }

  const reviewsGo = document.querySelector("#reviews-left")
  // const reviewGoNum = parseInt(reviewsGo)
  reviewsGo.innerHTML = 3 - (levelCountNum % 3)

}

export { levelUp }
