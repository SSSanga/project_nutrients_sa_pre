function checkForm()
{
    let name = document.getElementById("name").value
    let id = document.getElementById("id").value
    let password = document.getElementById("password").value
    let passwordCheck = document.getElementById("passwordCheck").value
    let BIRTHDATE = document.getElementById("BIRTHDATE").value
    let email = document.getElementById("e-mail").value
    let tel = document.getElementById("tel").value
    let addre = document.getElementById("addre").value

    if (name === "")
    {
        document.getElementById("nameError").innerHTML="이름을 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("nameError").innerHTML=""
    }

    if (id === "")
    {
        document.getElementById("idError").innerHTML="아이디를 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("idError").innerHTML=""
    }

    if (password === "")
    {
        document.getElementById("passwordError").innerHTML="비밀번호를 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("passwordError").innerHTML=""
    }

    if (passwordCheck != password)
    {
        document.getElementById("passwordCheckError").innerHTML="비밀번호가 일치하지 않습니다."
        event.preventDefault();
    }

    else
    {
        document.getElementById("passwordCheckError").innerHTML=""
    }

    if (BIRTHDATE === "")
    {
        document.getElementById("BIRTHDATEError").innerHTML="생년월일을 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("BIRTHDATEError").innerHTML=""
    }

    if (email.includes('@'))
    {
        document.getElementById("emailError").innerHTML=""
    }

    else
    {
        document.getElementById("emailError").innerHTML="이메일 형식에 맞지 않습니다."
        event.preventDefault();
    }

    if (tel === "")
    {
        document.getElementById("telError").innerHTML="전화번호를 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("telError").innerHTML=""
    }

    if (addre === "")
    {
        document.getElementById("addreError").innerHTML="주소지를 입력해주세요."
        event.preventDefault();
    }

    else
    {
        document.getElementById("addreError").innerHTML=""
    }
}

document.querySelector("#submit").addEventListener("click", checkForm);