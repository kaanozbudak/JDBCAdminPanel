<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/userPage.css">
</head>
<body>

<form class="form" action="createTable" method="post" style="
    display: block; width: 400px;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;">
    <div class="form__group">
        <input type="text" placeholder="Table Name" name="tableName" value="" class="form__input" required/>
        <input type="number" placeholder="Number of columns" value="" class="form__input" required>

        <input type="text" placeholder="Name of Column" value="" class="form__input" required>
        <select class="browser-default custom-select" required>
            <option selected>Select Type</option>
            <option value="1">Int</option>
            <option value="2">Varchar</option>
            <option value="3">Text</option>
        </select>
        <input type="number" placeholder="Lenght/Values" value="" class="form__input" required>
    </div>
    <button class="btn" type="submit">Create</button>
</form>

</body>
</html>
