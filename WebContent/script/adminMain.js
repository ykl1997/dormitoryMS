let navlist = document.getElementById("menu").children;
let includelist = document.getElementById("main").children;
for (let i = 0; i < navlist.length - 1; i++) {
	navlist[i].onclick = function() {
		navlist[i].setAttribute('index', i);
		let index = navlist[i].getAttribute('index');
		for (let j = 0; j < navlist.length - 1; j++) {
			navlist[j].removeAttribute("class");
		}
		this.className = 'opt';
		for (let k = 0; k < includelist.length; k++) {
			includelist[k].removeAttribute('id');
		}
		includelist[index].id = 'show';
	}
}

$("#blue").click(function() {
	$("body").css("background", "#2376b7");
	$("h1").css({
		"background-color" : "#5070ff",
		"color" : "#fff"
	});
	$("#img").css("filter", "invert(0%)");
	$("ul li").css("background-color", "#5070ff");
	$("body #main>div").css('background-color', '#2376b7');
	$("#main").css({
		"border-left" : "10px #5070ff solid",
		"border-right" : "10px #5070ff solid",
		"border-bottom" : "10px #5070ff solid"
	});
	$("#main div h3").css('background-color', '#5070ff');

})

$("#red").click(function() {
	$("body").css("background", "#f03752"); // #ec4e8a
	$("h1").css({
		"background-color" : "#ed556a",
		"color" : "#fff"
	});
	$("#img").css("filter", "invert(0%)");
	$("ul li").css("background-color", "#ed556a");
	$("body #main>div").css('background-color', '#f03752');
	$("#main").css({
		"border-left" : "10px #ed556a solid",
		"border-right" : "10px #ed556a solid",
		"border-bottom" : "10px #ed556a solid"
	});
	$("#main div h3").css('background-color', '#ed556a');
})
$("#black").click(function() {
	$("body").css("background", "#142C38");
	$("h1").css({
		"background-color" : "#31414E",
		"color" : "rgba(255, 255, 255, 0.5)"
	});
	$("#img").css("filter", "invert(0%)");
	$("ul li").css("background-color", "#31414E");
	$("body #main>div").css('background-color', '#142C38');
	$("#main").css({
		"border-left" : "10px #31414E solid",
		"border-right" : "10px #31414E solid",
		"border-bottom" : "10px #31414E solid"
	});
	$("#main div h3").css('background-color', '#31414E');
})
$("#white").click(function() {
	$("body").css("background", "#ffa60f");
	$("h1").css({
		"background-color" : "#fbb957",
		"color" : "#1d160b"
	});
	$("#img").css("filter","invert(100%)");
	$("ul li").css("background-color", "#fbb957");
	$("body #main>div").css('background-color', '#ffa60f');
	$("#main").css({
		"border-left" : "10px #fbb957 solid",
		"border-right" : "10px #fbb957 solid",
		"border-bottom" : "10px #fbb957 solid"
	});
	$("#main div h3").css('background-color', '#fbb957');
})
$(".ui").mouseenter(function(){
  $('.ui').animate({ left: '0px' }, 500,'swing');
});
$(".ui").mouseleave(function(){
	  $(".ui").animate({left: '-30px' }, 500,'swing');
	});
