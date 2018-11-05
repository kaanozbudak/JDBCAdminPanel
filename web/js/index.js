window.addEventListener("load",
    function(){
        loginSide = document.getElementById("loginSide");
        registerSide = document.getElementById("registerSide");
        registerform = document.getElementById("registerForm");
        loginform = document.getElementById("loginForm");
        inputs = document.getElementsByTagName("input");
        submit = document.getElementById("submit");
        loginSide.addEventListener("click",
            function() {
                loginform.style.display = "block";
                registerform.style.display = "none";

            });
        registerSide.addEventListener("click",
            function() {
                loginform.style.display = "none";
                registerform.style.display = "block";

            });
    });
