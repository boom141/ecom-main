<?php
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\Exception;
  
  require 'phpmailer/src/Exception.php';
  require 'phpmailer/src/PHPMailer.php';
  require 'phpmailer/src/SMTP.php';

if(isset($_POST['password-reset-token']) && $_POST['email'])
{
    include "connect.php";
     
    $emailId = $_POST['email'];
 
    $result = mysqli_query($conn,"SELECT * FROM users WHERE email='" . $emailId . "'");
 
    $row= mysqli_fetch_array($result);
 
  if($row)
  { 
     
     $token = md5($emailId).rand(10,9999);

     $expFormat = mktime(
     date("H"), date("i"), date("s"), date("m") ,date("d")+1, date("Y")
     );
 
    $expDate = date("Y-m-d H:i:s",$expFormat);
 
    mysqli_query($conn,"UPDATE users SET reset_link_token='" . $token . "' ,exp_date='" . $expDate . "' WHERE email='" . $emailId . "'");
 
    $mail = new PHPMailer(true);
 
    $mail->IsSMTP();
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = true;                  
    $mail->Username = "#";
    $mail->Password = "#";
    $mail->SMTPSecure = "ssl";  
    $mail->Port = "465";

    $mail->setFrom("josepnavalms@gmail.com");
    
    $mail->IsHTML(true);

    $mail->AddAddress($_POST['email']);
    
    $mail->Subject =  'Reset Password';
    
    $mail->Body = "Email verified! click to reset password <a href='http://localhost/ecom-main/reset-password.php?key=".$emailId."&token=".$token."'>Click To Reset password</a>";
    
    if($mail->Send())
    {
      echo "Check Your Email and Click on the link sent to your email";
    }
    else
    {
      echo "Mail Error - >".$mail->ErrorInfo;
    }
  }else{
    echo "Invalid Email Address. Go back";
  }
}
?>
