document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const addListItem = (event) => {
    event.preventDefault();

    const favInput = document.querySelector('.favorite-input');
    const favValue = favInput.value;
    favInput.value = "";

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');

    li.textContent = favValue;

    ul.appendChild(li);
  };

  const favSubmit = document.querySelector('.favorite-submit');
  favSubmit.addEventListener('click', addListItem);

  // --- your code here!



  // adding new photos

  const toggleForm = (e) => {
    const div = document.querySelector('.photo-form-container');
    if (div.className === 'photo-form-container') {
      div.className = 'photo-form-container hidden';
    }
    else {
      div.className = 'photo-form-container';
    }
  };

  const photoFormButton = document.querySelector('.photo-show-button');
  photoFormButton.addEventListener('click', toggleForm);
  // --- your code here!

  const addPhoto = (e) => {
    e.preventDefault();
    
    const input = document.querySelector('.photo-url-input');
    const photoUrl = input.value;
    input.value = "";

    const ul = document.getElementsByClassName('dog-photos');

    const img = document.createElement('img')
    img.src = photoUrl;

    const li = document.createElement('li');
    li.appendChild(img)

    ul.appendChild(li)
  };

  const photoSubmit = document.querySelector('photo-url-submit');
  photoSubmit.addEventListener('click',);
});
