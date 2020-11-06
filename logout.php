<?php

session_start();

if (isset($_SESSION['user_profile'])) {
    session_destroy();
    echo "logout sucessful";  
    header('refresh: 5 ; url=http://localhost/globalshala/DIGIBADGE-3(latest)/template/divyansh/landing.html');     // <----------------link to landing page

} else {
    echo "<script>location.href='./login.php'</script>";
}
