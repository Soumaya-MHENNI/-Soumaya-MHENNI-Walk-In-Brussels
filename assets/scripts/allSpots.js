const gridSlider = document.querySelector('.grid-slider');
const carouselBox = document.querySelectorAll('.grid-slider .grid-container');

//button

const prevBttn = document.querySelector('.button-prev');
const nextBttn = document.querySelector('.button-next');
 //

 let counter = 1; //commencer par le 1er bloc
let size = carouselBox[0].clientWidth;//retourner la taille du 1er bloc
gridSlider.style.transform ='translateX(' + (-size * counter) + 'px)';//translater 1 bloc sur l'axe x


//Button Listeners
nextBttn.addEventListener('click',()=>{
    if(counter >= carouselBox.length-1) return;
    gridSlider.style.transition = "transform 0.7s ease-out";
    counter++;
    gridSlider.style.transform ='translateX(' + (-size * counter) + 'px)';
  })


  prevBttn.addEventListener('click',()=>{
    if (counter <= 0)return;
    gridSlider.style.transition = "transform 0.7s ease-out";
    counter--;
    
    gridSlider.style.transform ='translateX(' + (-size * counter) + 'px)';
  })



  gridSlider.addEventListener('transitionend',()=>{

    if(carouselBox[counter].id === 'LastClone'){
        gridSlider.style.transition = "none";
        counter = carouselBox.length -2;  
        gridSlider.style.transform ='translateX(' + (-size * counter) + 'px)';
   
    }
    if(carouselBox[counter].id === 'FirstClone'){
        gridSlider.style.transition = "none";
      counter = carouselBox.length - counter;  
      gridSlider.style.transform ='translateX(' + (-size * counter) + 'px)';
 
  }
  })
 
