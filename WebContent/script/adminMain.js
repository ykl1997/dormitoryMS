let navlist = document.getElementById("menu").children;
let includelist = document.getElementById("main").children;
for (let i = 0; i < navlist.length-1; i++) {
    navlist[i].onclick = function () {
        navlist[i].setAttribute('index',i);
        let index=navlist[i].getAttribute('index');     
        for (let j = 0; j < navlist.length-1; j++) {
            navlist[j].removeAttribute("class");
        }
        this.className = 'opt';
        for (let k = 0; k < includelist.length; k++) {
            includelist[k].removeAttribute('id');
        }
        includelist[index].id='show';
    }
}
