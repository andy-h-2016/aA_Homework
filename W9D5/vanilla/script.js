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

  // --- your code here!
  const addLi = (e) => {
    e.preventDefault();
    const favoriteInput = document.getElementsByClassName("favorite-input")[0];
    const favorite = favoriteInput.value;

    const SFPlaces = document.getElementById("sf-places");
    const li = document.createElement("li");
      

    li.textContent = favorite;
    SFPlaces.appendChild(li);

    favoriteInput.value = "";    
  }

  
  const favoriteForm = document.getElementById('favorite-form');
  favoriteForm.addEventListener("submit", addLi);

  const togglePhotoForm = () => {
  
    const formClasses = photoForm.classList
    if (formClasses.contains('hidden')) {
      formClasses.remove('hidden');
    } else {
      formClasses.add('hidden');
    }
  };

  const addPhoto = (e) => {
    e.preventDefault();
    const photoInput = document.getElementsByClassName('photo-url-input')[0];
    const imageUrl = photoInput.value;

    const dogPhotos = document.getElementsByClassName('dog-photos')[0];
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.setAttribute('src', imageUrl);
    li.appendChild(img);
    dogPhotos.appendChild(li);
    
  }

  const photoForm = document.getElementsByClassName('photo-form-container')[0];
  photoForm.addEventListener("submit", addPhoto)

  const togglePhotoButton = document.getElementsByClassName("photo-show-button")[0];
  togglePhotoButton.addEventListener("click", togglePhotoForm);



  // adding new photos

  // --- your code here!



});
