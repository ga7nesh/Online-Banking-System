<?php 
    
    
    function sendMessage($customerMail, $name){

        require 'PHPMailerAutoload.php';
        require 'class.smtp.php';
        $mail  = new PHPMailer;
        $mail->isSMTP();
        $mail->Host='smtp.gmail.com';
        $mail->Port=587;
        $mail->SMTPAuth=true;
        $mail->SMTPSecure='tls';

        $mail->Username = 'example123@gmail.com';
        $mail->Password='password123';

        $content = file_get_contents('../mail/congraTemp.php');
        $mail->setFrom("example123@gmail.com", "O B S");
        $mail->addAddress($customerMail);
        $mail->addReplyTo("example123@gmail.com");

        $mail->isHTML(true);
        $mail->Subject="Account Created Sucessfully!";

        $swap_var = array(

            "{Name}"=> "$name"

        );

        foreach(array_keys($swap_var) as $key){
            if(strlen($key) > 2 && trim($key) !=""){
                $content = str_replace($key, $swap_var[$key], $content);
            }

        }
         
        $mail->Body="$content";
        

        if(!$mail->send()){
            echo"mail not sent";
        }
        
    }  
?>