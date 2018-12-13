function integerFnc(index) {
    document.getElementsByTagName("input")[index].addEventListener("change", function () {
        var integerRegex = /^\d+$/;
        var negIntegerRegex = /^(-)\d+$/;
        if (integerRegex.test(this.value) && parseInt(this.value) > -2147483648 && parseInt(this.value) < 2147483647) {
            //Pozitif Integer değer verilmişse
            this.style.color = "green";
        }
        else if (negIntegerRegex.test(this.value) && parseInt(this.value) > -2147483648 && parseInt(this.value) < 2147483647) {
            //Negatif Integer değer verilmişse
            this.style.color = "blue";
        }
        else {
            //Integer değer verilmemişse
            this.style.color = "red";
        }
    });
}

function numIntegerFnc(index, number) {
    document.getElementsByTagName("input")[index].addEventListener("change", function () {
        var integerRegex = new RegExp("^\\d{1," + number + "}$");
        var negIntegerRegex = new RegExp("^(-)\\d{1," + number + "}$");
        if (integerRegex.test(this.value) && parseInt(this.value) > -2147483648 && parseInt(this.value) < 2147483647) {
            //Pozitif Integer değer verilmişse
            this.style.color = "green";
        }
        else if (negIntegerRegex.test(this.value) && parseInt(this.value) > -2147483648 && parseInt(this.value) < 2147483647) {
            //Negatif Integer değer verilmişse
            this.style.color = "blue";
        }
        else {
            //Integer değer verilmemişse
            this.style.color = "red";
        }
    });
}

function floatDoubleFnc(index) {
    // ------------------------------ FLOAT / DOUBLE -------------------------------- \\
    document.getElementsByTagName("input")[index].addEventListener("change", function () {
        var floatRegex1 = /^\d+$/;
        var floatRegex2 = /^\d+(,)\d{1,6}$/;
        var negFloatRegex = /^(-)\d+$/;
        var negFloatRegex2 = /^(-)\d+(,)\d{1,6}$/;
        if (floatRegex1.test(this.value) || floatRegex2.test(this.value) || negFloatRegex.test(this.value) || negFloatRegex2.test(this.value)) {
            this.style.color = "green";
        }
        else {
            this.style.color = "red";
        }
    });
}

function numFloatDouble(index, number) {
    // ------------------------------ FLOAT / DOUBLE -------------------------------- \\
    document.getElementsByTagName("input")[index].addEventListener("change", function () {
        var floatRegex1 = new RegExp("^\\d{1," + number + "}$");
        var floatRegex2 = new RegExp("^\\d{1," + number + "}(,)\d{1,6}$");
        var negFloatRegex = new RegExp("^(-)\\d{1," + number + "}$");
        var negFloatRegex2 = new RegExp("^(-)\\d{1," + number + "}(,)\d{1,6}$");
        if (floatRegex1.test(this.value) || floatRegex2.test(this.value) || negFloatRegex.test(this.value) || negFloatRegex2.test(this.value)) {
            this.style.color = "green";
        }
        else {
            this.style.color = "red";
        }
    });
}

function varcharFnc(index) {
    //Can be any character any size
}

function numVarcharFnc(index, number) {
    document.getElementsByTagName("input")[index].addEventListener("change", function () {
        var pattern = "^.{1," + number + "}$";
        var varcharRegex = new RegExp(pattern);
        if (varcharRegex.test(this.value)) {
            this.style.color = "green";
        }
        else {
            this.style.color = "red";
        }
    });
}

function checkTypes(type) {
    var regex1 = /^\w+$/;
    var regex2 = /^\w+\(\d+\)$/;
    var regex3 = /\w+/;
    var regex4 = /\d+/;
    var temp;
    var number;
    for (var i = 0; i < type.length; i++) {
        if (regex1.test(type[i])) {
            if (type[i] == "int") integerFnc(i);
            else if (type[i] == "float" || type[i] == "double") floatDoubleFnc(i);
            else if (type[i] == "varchar") varcharFnc(i);
        }
        else if (regex2.test(type[i])) {
            temp = regex3.exec(type[i])["0"];
            number = regex4.exec(type[i])["0"];
            if (temp == "int") numIntegerFnc(i, number);
            else if (temp == "float" || temp == "double") numFloatDouble(i, number);
            else if (temp == "varchar") numVarcharFnc(i, number);
        }
    }
}