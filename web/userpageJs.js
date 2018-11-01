window.addEventListener('load',
        function () {
            var container = document.getElementById("container");
            var containerUserSettings = document.getElementById("containerUserSettings");
            var userSettingsButton = document.getElementById("userSettingsButton");
            userSettingsButton.addEventListener('click',
                function () {
                    container.style.display = "none";
                    containerUserSettings.style.display = "block";
                    console.log("asd");
                });
        });