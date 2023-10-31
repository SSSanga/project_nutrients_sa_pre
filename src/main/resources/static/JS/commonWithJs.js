function increaseSize() {
  zoom += 0.1;
  document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
  document.body.style.zoom = zoom;
}

function decreaseSize() {
  zoom -= 0.1;
  document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
  document.body.style.zoom = zoom;
}