const expand = () => {
    const restaurantButton = document.getElementById('restaurant-button')
    if(restaurantButton){
      document.getElementById('restaurant-button').addEventListener("click",(event) => {
       document.querySelector('.search-bar-restaurant').classList.remove('hidden')
       document.querySelector('.search-bar-restaurant').classList.add('animated')
       document.querySelector('.search-container-restaurant').classList.add('d-flex')
       document.getElementById('restaurant-button').classList.add('small-button')
       document.getElementById('restaurant-button').innerHTML = '<i class="fas fa-concierge-bell"></i>'
       document.getElementById('dish-button').classList.remove('small-button')
       document.getElementById('dish-button').innerText = 'SEARCH DISHES'
       document.querySelector('.search-bar-dishes').classList.remove('animated')
       document.querySelector('.search-container-dish').classList.remove('d-flex')
       document.querySelector('.search-bar-dishes').classList.add('hidden')
      document.getElementById('form-button-search-restaurant').focus()
     })

      document.getElementById('dish-button').addEventListener("click",(event) => {
         document.querySelector('.search-bar-dishes').classList.remove('hidden')
         document.querySelector('.search-bar-dishes').classList.add('animated')
         document.querySelector('.search-container-dish').classList.add('d-flex')
         document.getElementById('dish-button').classList.add('small-button')
         document.getElementById('dish-button').innerHTML = '<i class="fas fa-utensils"></i>'
         document.getElementById('restaurant-button').classList.remove('small-button')
         document.getElementById('restaurant-button').innerText = "SEARCH RESTAURANTS"
         document.querySelector('.search-bar-restaurant').classList.remove('animated')
         document.querySelector('.search-container-restaurant').classList.remove('d-flex')
         document.querySelector('.search-bar-restaurant').classList.add('hidden')
         document.getElementById('form-button-search-dish').focus()
     })
   }
}

export {expand}
