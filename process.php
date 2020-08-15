<?php
require("config.php");

$action = $_POST['action'];
exit;
switch($action){
    case 'clientSidebar':
        $id = $_POST['hotspot'];
        $getClient = fetchRows("SELECT * FROM client_note JOIN client on(client_note.client=client.mac) WHERE session='$id' AND mac != 'stat' ORDER by date DESC");
        if($getClient){
            foreach($getClient as $b){
                if($b['block_status'] != 'No'){
                    $block = 'Blocked';
                }else{
                    $block = 'Active';
                }
                echo '<li  class="right-list"><b style="text-decoration:underline;font-size:1vw;">'.$b['host'].'</b> <br> <pre style="margin-top:7px;">Mac address : '.$b['mac'].'<br>IP address : '.$b['ipaddress'].'<br>Time : '.date("d/m/Y h:m A", strtotime($b['date'])).'</pre><small>'.elapsed($b['date']).'</small></li>';
            }
        }else{
            echo '<li  class="right-list">No client</li>';
        }
    break;
}

?>