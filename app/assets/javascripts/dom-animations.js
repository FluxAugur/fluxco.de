var aboutResponder = document.getElementById('left-well'), aboutBackContent = document.getElementById('left-well-back'), aboutBack = -1
var homeResponder = document.getElementById('jumbo'), homeBackContent = document.getElementById('jumbo'), homeBack = -1
var contactResponder = document.getElementById('right-well'), contactBackContent = document.getElementById('right-well-back'), contactBack = -1

function aboutListener() {
  if(aboutBack == -1) {
    aboutBack = flippant.flip(aboutResponder, aboutBackContent)
  } else {
    aboutBack.close()
  }
}

function homeListener() {
  if(homeBack == -1) {
    homeBack = flippant.flip(homeResponder, homeBackContent)
  } else {
    homeResponder.close()
  }
}

function contactListener() {
  if(contactResponder == -1) {
    contactBack = flippant.flip(contactResponder, contactBackContent)
  } else {
    contactResponder.close()
  }
}

