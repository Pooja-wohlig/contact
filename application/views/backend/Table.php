<!DOCTYPE html>
<html lang="">
<body>

<h>
  Table of Contents
</h>

   
<table border="1" style="width:100%" class="table table-bordered">

<tr>
    
    <th>NAME</th>		
    <th>STATUS</th>
    <th>JSON</th>
    <th>EMAIL</th>
    <th>Action1</th>
    <th>Action2</th>
    
  </tr>

<?php for($i=0;$i<sizeof($msg);$i++) { ?>   
   <tr>
    <td><?Php echo $msg[$i]->name;?></td> 
    <td><?Php echo  $msg[$i]->status;?></td>		
    <td><?Php echo  $msg[$i]->json;?></td>
    <td><?Php echo $msg[$i]->email;?></td>
     <td><a  href="<?php echo site_url('contactus1/delete?id='). $msg[$i]->id;?>"><button class="btn btn-primary">DELETE</button></a></td>
     <td><a  href="<?php echo site_url('contactus1/update?id='). $msg[$i]->id;?>"><button class="btn btn-primary">UPDATE</button></a></td>
  </tr>
  <?php }?>
  </table>
</body>
</html>