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
$('#input1').on('blur', (function () {
    toVerify('#input1p', '#input1', "原密码不能为空");
}));
$('#input2').on('blur', (function () {
    toVerify('#input2p', '#input2', "新密码不能为空");
}));
$('#input3').on('input', (function () {
    let parent = document.querySelector('#input3p');
    let em = document.querySelector('#input3');
    let em2=document.querySelector('#input2')
    if (em.value!==em2.value) {
            let hint = document.createElement("div");
            hint.innerHTML ="两次密码不一致";
            if (parent.childElementCount < 2) {
                    parent.appendChild(hint);
            }
    } else {
            if (parent.childElementCount > 1) {
                    parent.removeChild(parent.lastChild);
            }
    }
}));