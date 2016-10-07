<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>OnClick Insert Radio Button value into Database using PDO in Jquery Ajax PHP | SoftAOX Tutorial</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>
<h1> On Click Insert Radio Button Value into Database</h1>
<input type="radio" name="gender" value="Male">Male<br/><br/>
<input type="radio" name="gender" value="Female">Female<br/><br/>
<input type="radio" name="gender" value="Others">Others<br/>
<input type="radio" name="bol" value="1">Yes<br/><br/>
<input type="radio" name="bol" value="0">No<br/><br/>
<input type="submit">Submit<br/>
<h3 id="result"></h3>
<br/>
<script>
$(document).ready(function(){
 $("input:submit").click(function(){
 var gender = $('input[name=gender]:checked').val();
var bol = $('input[name=bol]:checked').val();
 $.ajax({
 url:"insert.php",
 method:"POST",
 data:{gender:gender,bol:bol},
 success: function(result){
 $('#result').html(data);
 }
 });
 });
});
</script>
</body>
</html>