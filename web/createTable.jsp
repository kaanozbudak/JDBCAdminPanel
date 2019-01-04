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

<form class="form" action="crtTable" method="post" style="
    display: block; width: 400px;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;">
    <div class="form__group">
        <input type="text" placeholder="Table Name" name="tableName" value="" class="form__input" required/>
        <input type="text" placeholder="Number of Column" name="numberOfCol" value="" class="form__input" required/>
    </div>
    <button class="btn" type="submit">Go</button>
</form>

</body>
</html>
