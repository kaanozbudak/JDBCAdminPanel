window.addEventListener('load',
    function () {
        var userSetting = document.getElementById("userSetting");
        var userSettingPage = document.getElementById("userSettingPage");
        var userSettingBackButton = document.getElementById("userSettingBackButton");
        var mainMenu = document.getElementById("mainMenu");
        var updatePassButton = document.getElementById("updatePassButton");
        var updateInfoButton = document.getElementById("updateInfoButton");
        var resetPassPage = document.getElementById("resetPassPage");
        var resetPassBack = document.getElementById("resetPassBack");
        var themeButton = document.getElementById("themeButton");
        var themePage = document.getElementById("themePage");
        var themeBackButton = document.getElementById("themeBackButton");
        var dark = document.getElementById("dark");
        var light = document.getElementById("light");
        var buttonStyle = document.getElementsByTagName("button");

        themeButton.addEventListener("click",
            function () {
                console.log("as");
                userSettingPage.style.display = "none"
                themePage.style.display = "block";
            });
        dark.addEventListener("click",
            function () {
                for (var i = 0; i<buttonStyle.length; i++){
                    buttonStyle[i].style.background = "#2F4F4F";
                    buttonStyle[i].style.color = "white";
                }
            });
        light.addEventListener("click",
            function () {
                for (var i = 0; i<buttonStyle.length; i++){
                    buttonStyle[i].style.background = "#ffffff";
                    buttonStyle[i].style.color = "#808080";
                }
            });
        themeBackButton.addEventListener("click",
            function () {
                userSettingPage.style.display = "block"
                themePage.style.display = "none";
            });
        updatePassButton.addEventListener("click",
            function () {
                resetPassPage.style.display = "block";
                mainMenu.style.display = "none";
                userSettingPage.style.display = "none";
            });
        resetPassBack.addEventListener("click",
            function () {
                resetPassPage.style.display = "none";
                mainMenu.style.display = "none";
                userSettingPage.style.display = "block";
            });
        userSettingBackButton.addEventListener("click",
            function () {
                mainMenu.style.display = "block";
                userSettingPage.style.display = "none";
            });
        userSetting.addEventListener("click",
            function () {
                mainMenu.style.display = "none";
                userSettingPage.style.display = "block";
            });
    });