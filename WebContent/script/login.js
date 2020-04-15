function reLoadCaptcha() {
        var captIma = document.getElementById("captcha");
        captIma.src = "/dormitoryMS/imgcode?t=" + (new Date()).getTime();
}

setInterval(() => {
        $('#float').animate({ top: '0px', left: '700px' }, 6000, 'swing');

        $('#float').animate({ top: '250px', left: '1130px' }, 6000, 'swing');

        $('#float').animate({ top: '400px', left: '700px' }, 6000, 'swing');

        $('#float').animate({ top: '300px', left: '0px' }, 6000, 'swing');

}, 1000);
function toVerify(parentid, childid, mess) {
        let parent = document.querySelector(parentid);
        let em = document.querySelector(childid);
        if (!em.value) {
                let hint = document.createElement("div");
                hint.innerHTML = mess;
                if (parent.childElementCount < 2) {
                        parent.appendChild(hint);
                }
        } else {
                if (parent.childElementCount > 1) {
                        parent.removeChild(parent.lastChild);
                }
        }
}
$('#input1').on('input', (function () {
        toVerify('#input1p', '#input1', "学号不能为空")
}));
$('#input2').on('input', (function () {
        toVerify('#input2p', '#input2', "密码不能为空")
}));
$('#input3').on('input', (function () {
    let parent = document.querySelector('.tupian');
    let em = document.querySelector('#input3');
    if (!em.value) {
            let hint = document.createElement("div");
            hint.innerHTML = "请填写验证码";
            if (parent.childElementCount < 3) {
                    parent.appendChild(hint);
            }
    } else {
            if (parent.childElementCount > 2) {
                    parent.removeChild(parent.lastChild);
            }
    }
}));
$('#input1').blur(function () {
        toVerify('#input1p', '#input1', "学号不能为空")
});
$('#input2').blur(function () {
        toVerify('#input2p', '#input2', "密码不能为空")
});
$('#input3').blur(function () {
        let parent = document.querySelector('.tupian');
        let em = document.querySelector('#input3');
        if (!em.value) {
                let hint = document.createElement("div");
                hint.innerHTML = "请填写验证码";
                if (parent.childElementCount < 3) {
                        parent.appendChild(hint);
                }
        } else {
                if (parent.childElementCount > 2) {
                        parent.removeChild(parent.lastChild);
                }
        }
});






