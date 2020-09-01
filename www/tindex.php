<?php
use System\Coeur\Application\LoadController;
require_once '../vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
$mail = new PHPMailer(true);
try {
   $mail->SMTPDebug = SMTP::DEBUG_SERVER;
    $mail->isSMTP();
    $mail->Host       = 'SMTP.office365.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'hacenedu92@live.fr';
    $mail->Password   = 'albatros';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;
        $mail->setFrom('hacenedu92@live.fr', 'Mailer');
    $mail->addAddress('hacenesahraoui.paris@gmail.com');
        $mail->isHTML(true);
    $mail->Subject = 'Test d\'envoi par mail de messages';
    $mail->Body = 'test corps de message';
    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
?>