<!DOCTYPE html>
<html lang="">
<body>

<h>
  Table of Contents
</h>

   
<table border="1" style="width:100%" class="table table-bordered">

<tr>
    
    <th>NAME</th>		
    <th>EMAIL</th>
    <th>PASSWORD</th>
  </tr>

<?php for($i=0;$i<sizeof($msg);$i++) { ?>   
   <tr>
    <td><?Php echo $msg[$i]->name;?></td> 
    <td><?Php echo  $msg[$i]->email;?></td>		
    <td><?Php echo  $msg[$i]->password;?></td>
  </tr>
  <?php }?>
  </table>
</body>
</html>