window.addEventListener('load',
    function () {
        var user1 = document.getElementsByClassName("user")[0];
        var user2 = document.getElementsByClassName("user")[1];
        var userSettings = document.getElementsByClassName("btn")[2].addEventListener('click',
            function () {
                user1.style.display = "none";
                user2.style.display = "block";
            });
    });