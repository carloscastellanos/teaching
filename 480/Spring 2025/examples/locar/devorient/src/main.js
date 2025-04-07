window.addEventListener("deviceorientationabsolute", e => {
    document.getElementById("devorient").innerHTML = 
        `Alpha: ${Math.floor(e.alpha)}<br />Beta: ${Math.floor(e.beta)}<br />Gamma: ${Math.floor(e.gamma)}`;
});
