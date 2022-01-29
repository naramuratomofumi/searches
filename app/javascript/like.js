function like (){
  const submit = document.getElementById("like_btn");
  submit.addEventListener("click", () =>{
    console.log("クリック時発火") 
    
  });
}

window.addEventListener('load',like);