<?php
//Insert Data
$hostname = "localhost";
$username = "root";
$password = "admin";
$databasename = "test";
try
{
 $conn = new PDO("mysql:host=$hostname;dbname=$databasename",$username, $password);
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if($_POST["daad"] == 0) 
{
$_POST["daadrate"] = 0;
$_POST["daadsearch"] = 0;
}


if($_POST["RD_Entry"] == 0)
{
	$_POST["app_proc"] = 0;	
}

if($_POST["Uni_assist"] == 0)
{
	$_POST["Uni_assist_app_r"] = 0;	
	$_POST["Uni_assist_info"] = 0;
	$_POST["Uni_assist_webinar"] = 0;
}

if($_POST["Studentenwerk"] == 0)
{
	$_POST["Studentenwerk_app"] = 0;	
	$_POST["Studentenwerk_resp"] = 0;
	$_POST["Studentenwerk_info"] = 0;
}


 if(isset($_POST["countries"],$_POST["age"],$_POST["course"],$_POST["course_lang"],$_POST["daad"],$_POST["daadrate"],$_POST["daadsearch"],$_POST["Universityrate"],$_POST["RD_Entry"],$_POST["app_proc"],$_POST["Uni_assist"],$_POST["Uni_assist_app_r"],$_POST["Uni_assist_info"],$_POST["Uni_assist_webinar"],$_POST["Visa_Process_r"],$_POST["Visa_Process_Consulate"],$_POST["Visa_Process_Response"],$_POST["Tuition_Fee"],$_POST["Funding_Opp"],$_POST["Accommodation"],$_POST["Accommodation_info"],$_POST["Accommodation_sugg"],$_POST["Studentenwerk"],$_POST["Studentenwerk_app"],$_POST["Studentenwerk_resp"],$_POST["Studentenwerk_info"],$_POST["Enrollment_process"],$_POST["International_guide"],$_POST["International_resp"],$_POST["International_assis"],$_POST["University_reg"],$_POST["Arrival_assis"],$_POST["Language_Pro"],$_POST["German_language"]))
 {
 $query = "INSERT INTO diff_priv(countries, age, course, course_lang, daad, daadrate, daadsearch, Universityrate, RD_Entry, app_proc, Uni_assist, Uni_assist_app_r, Uni_assist_info, Uni_assist_webinar, Visa_Process_r, Visa_Process_Consulate, Visa_Process_Response, Tuition_Fee, Funding_Opp, Accommodation, Accommodation_info, Accommodation_sugg, Studentenwerk, Studentenwerk_app, Studentenwerk_resp, Studentenwerk_info, Enrollment_process, International_guide, International_resp, International_assis, University_reg, Arrival_assis, Language_Pro, German_language) VALUES (:countries, :age, :course, :course_lang, :daad, :daadrate, :daadsearch, :Universityrate, :RD_Entry, :app_proc, :Uni_assist, :Uni_assist_app_r, :Uni_assist_info, :Uni_assist_webinar, :Visa_Process_r, :Visa_Process_Consulate, :Visa_Process_Response, :Tuition_Fee, :Funding_Opp, :Accommodation, :Accommodation_info, :Accommodation_sugg, :Studentenwerk, :Studentenwerk_app, :Studentenwerk_resp, :Studentenwerk_info, :Enrollment_process, :International_guide, :International_resp, :International_assis, :University_reg, :Arrival_assis, :Language_Pro, :German_language)";
 $statement = $conn->prepare($query);
 $statement->execute(
 array(
'countries' => $_POST["countries"],
'age' => $_POST["age"],
'course' => $_POST["course"],
'course_lang' => $_POST["course_lang"],
'daad' => $_POST["daad"],
'daadrate' => $_POST["daadrate"],
'daadsearch' => $_POST["daadsearch"],
'Universityrate' => $_POST["Universityrate"],
'RD_Entry' => $_POST["RD_Entry"],
'app_proc' => $_POST["app_proc"],
'Uni_assist' => $_POST["Uni_assist"],
'Uni_assist_app_r' => $_POST["Uni_assist_app_r"],
'Uni_assist_info' => $_POST["Uni_assist_info"],
'Uni_assist_webinar' => $_POST["Uni_assist_webinar"],
'Visa_Process_r' => $_POST["Visa_Process_r"],
'Visa_Process_Consulate' => $_POST["Visa_Process_Consulate"],
'Visa_Process_Response' => $_POST["Visa_Process_Response"],
'Tuition_Fee' => $_POST["Tuition_Fee"],
'Funding_Opp' => $_POST["Funding_Opp"],
'Accommodation' => $_POST["Accommodation"],
'Accommodation_info' => $_POST["Accommodation_info"],
'Accommodation_sugg' => $_POST["Accommodation_sugg"],
'Studentenwerk' => $_POST["Studentenwerk"],
'Studentenwerk_app' => $_POST["Studentenwerk_app"],
'Studentenwerk_resp' => $_POST["Studentenwerk_resp"],
'Studentenwerk_info' => $_POST["Studentenwerk_info"],
'Enrollment_process' => $_POST["Enrollment_process"],
'International_guide' => $_POST["International_guide"],
'International_resp' => $_POST["International_resp"],
'International_assis' => $_POST["International_assis"],
'University_reg' => $_POST["University_reg"],
'Arrival_assis' => $_POST["Arrival_assis"],
'Language_Pro' => $_POST["Language_Pro"],
'German_language' => $_POST["German_language"]
 )
 );
 $count = $statement->rowCount();
 if($count > 0)
 {
 echo "Data Inserted Successfully..!";
 }
 else
 {
 echo "Data Insertion Failed";
 }
 }
}
catch(PDOException $error)
{
 echo $error->getMessage();
}
?>