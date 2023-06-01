const sliderImages = document.querySelectorAll('.slider-img'),
    sliderLine = document.querySelector('.slider-line'),
    sliderDots = document.querySelectorAll('.slider-dot'),
    sliderBtnNext = document.querySelector('.slider-btn-next'),
    sliderBtnPrev = document.querySelector('.slider-btn-prev');

let sliderCount = 0,
    sliderWidth;

window.addEventListener('resize', showSlide);

sliderBtnNext.addEventListener('click', nextSlide);
sliderBtnPrev.addEventListener('click', prevSlide);

function showSlide(){
    sliderWidth = document.querySelector('.slider').offsetWidth;
    sliderLine.style.width = sliderWidth * sliderImages.length + 'px';
    sliderImages.forEach(item => item.style.width = sliderWidth + 'px');

    rollSlider();
}
showSlide();

function nextSlide(){
    sliderCount++;
    if (sliderCount >= sliderImages.length) sliderCount = 0;

    rollSlider();
    thisSlide(sliderCount);
}

function prevSlide(){
    sliderCount--;
    if (sliderCount < 0) sliderCount = sliderImages.length - 1;

    rollSlider();
    thisSlide(sliderCount);
}

function rollSlider(){
    sliderLine.style.transform = `translateX(${-sliderCount * sliderWidth}px)`;
}

function thisSlide(index){
    sliderDots.forEach(item => item.classList.remove('active-dot'));
    sliderDots[index].classList.add('active-dot');
}

sliderDots.forEach((dot, index) =>{
    dot.addEventListener('click', () => {
        sliderCount = index;
        rollSlider();
        thisSlide(sliderCount); 
    })
}
)