function main() {
    hideShowBroto();
    document.querySelector("#select-tipo").addEventListener("change", hideShowBroto);
}

function hideShowBroto() {
  if (document.querySelector("#select-tipo").value == 'PROMOCAO' || document.querySelector("#select-tipo").value == 'BEBIDA') {
    document.querySelector("#broto").style.display = 'none';
  } else {
    document.querySelector("#broto").style.display = 'block';
  }
}

window.addEventListener("load", main);
