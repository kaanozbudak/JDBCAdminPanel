window.addEventListener('load',
    function () {
        document.getElementById("backButton").addEventListener('click',
            function () {
                user2.style.display="none";
                user1.style.display="block";
            });
        document.getElementById("themeButton").addEventListener('click',
            function () {
                user2.style.display="none";
                user3.display="block";
            });
        document.getElementById("themeBackButton").addEventListener('click',
            function () {
                user3.display="none";
                user2.display="block";
            });
        var user1 = document.getElementsByClassName("user")[0];
        var user2 = document.getElementsByClassName("user")[1];
        var user3 = document.getElementsByClassName("user")[2];
        document.getElementsByClassName("btn")[2].addEventListener('click',
            function () {
                user1.style.display = "none";
                user2.style.display = "block";
            });
    });