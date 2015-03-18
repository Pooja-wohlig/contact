<!DOCTYPE html>
<html lang="">
<body>

<h>
  Table of Contents
</h>

   
<table border="1" style="width:100%" class="table table-bordered">

<tr>
    
    <th>WEBSITE</th>		
    <th>NAME</th>		
    <th>EMAIL</th>		
    <th>PHONE</th>		
    <th>QUERY</th>
    <th>SUBJECT</th>
    <th>JSON</th>
    <th>Action1</th>
    <th>Action2</th>
    
  </tr>

<?php for($i=0;$i<sizeof($msg);$i++) { ?>   
   <tr>
    <td><?Php echo $msg[$i]->website;?></td> 
    <td><?Php echo $msg[$i]->name;?></td> 
    <td><?Php echo $msg[$i]->email;?></td> 
    <td><?Php echo $msg[$i]->phone;?></td> 
    <td><?Php echo $msg[$i]->query;?></td> 
    <td><?Php echo  $msg[$i]->subject;?></td>		
    <td><?Php echo  $msg[$i]->json;?></td>
     <td><a  href="<?php echo site_url('contactus2/delete?id='). $msg[$i]->id;?>"><button class="btn btn-primary">DELETE</button></a></td>
     <td><a href="<?php echo site_url('contactus2/update?id='). $msg[$i]->id;?>"><button class="btn btn-primary">UPDATE</button></a></td>
  </tr>
  <?php }?>
  </table>
</body>
</html>