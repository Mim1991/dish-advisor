const expand = () => {
    document.getElementById('restaurant-button').addEventListener("click",(event) => {
     document.querySelector('.search-bar-restaurant').classList.remove('hidden')
     document.querySelector('.search-bar-restaurant').classList.add('animated')
     document.querySelector('.search-container-restaurant').classList.add('d-flex')
     document.querySelector('.search-bar-dishes').classList.remove('animated')
     document.querySelector('.search-bar-dishes').classList.add('hidden')
     document.querySelector('.search-container-dish').classList.remove('d-flex')


   })
    document.getElementById('dish-button').addEventListener("click",(event) => {
       document.querySelector('.search-bar-dishes').classList.remove('hidden')
       document.querySelector('.search-bar-dishes').classList.add('animated')
       document.querySelector('.search-container-dish').classList.add('d-flex')
       document.querySelector('.search-bar-restaurant').classList.remove('animated')
       document.querySelector('.search-bar-restaurant').classList.add('hidden')
       document.querySelector('.search-container-restaurant').classList.remove('d-flex')
   })
   }

export {expand}
