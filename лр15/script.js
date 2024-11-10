let img = document.querySelectorAll('img')
let texti = document.querySelector('figcaption')
img[0].addEventListener("mouseover", function () {
	texti.innerText = "Новый год– это самый любимый праздник большинства взрослых и детей"
    
})
img[0].addEventListener("mouseout", function () {
	texti.innerText = ""
})
img[1].addEventListener("click", function () {
	if (this.classList.contains('border')) {
		this.classList.remove('border')
	} else {
		this.classList.add('border')
	}
})
img[3].addEventListener("mouseover", function () {
	this.src = 'пять.jpg'
})
img[3].addEventListener("mouseout", function () {
	this.src = 'четыре.jpg'
})

let form = document.querySelector('form')
let input = document.querySelectorAll('input')
let button = document.querySelector('button')
let footer = document.querySelector('footer')
form.addEventListener('submit', function (event) {
	event.preventDefault();
})
button.addEventListener('click', function () {
	for (let i = 0; i < input.length; i++) {
		text = document.createElement('p')
		text.innerText = input[i].value
		footer.append(text)
	}
})