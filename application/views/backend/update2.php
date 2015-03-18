<!--
<html>
<body>
<form action='<?php echo site_url("contactus2/update2_view"); ?>' method="post" class="table table-bordered"  >
       <?php print_r($inbox);?>
    

        <input type="hidden" name="id" value="<?php echo $inbox->id;?>">
        <br><br>


        Website:
        <div><input type="text" name="website" value="<?php echo  $inbox->website?>"></div>
        <br>
        Name::
        <div><input type="text" name="name" value="<?php echo  $inbox->name?>"></div>
        <br>
        Email:
        <div><input type="text" name="email" value="<?php echo  $inbox->email ?>"></div>
        <br>
         Phone:
        <div><input type="text" name="phone" value="<?php echo  $inbox->phone ?>"></div>
        <br>
         Query:
        <div><input type="text" name="query" value="<?php echo  $inbox->query ?>"></div>
        <br>
         Subject:
        <div><input type="text" name="subject" value="<?php echo  $inbox->subject ?>"></div>
        <br>
         Json:
        <div><input type="text" name="json" value="<?php echo  $inbox->json ?>"></div>
        <br>
     <input type="submit" value="Update">
           
    </form>
    </body>
    </html>
-->
    
   
  

<div class="row">
	<div class="col-lg-12">
	    <section class="panel">
		    <header class="panel-heading">
				 EDIT USER
			</header>
			<div class="panel-body">
			  <form class="form-horizontal tasi-form" class="table table-bordered" method="post" action="<?php echo site_url('contactus2/update2_view');?>" enctype= "multipart/form-data">
				<div class="form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Website</label>
				  <div class="col-sm-4">
				  <input type="text" id="normal-field" class="form-control" name="id" value="<?php echo  $inbox->id?>">
					<input type="text" id="normal-field" class="form-control" name="website" value="<?php echo  $inbox->website?>">
					
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Name</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="name" value="<?php echo  $inbox->name?>">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field">email</label>
				  <div class="col-sm-4">
					<input type="email" id="description-field" class="form-control" name="email" value="<?php echo  $inbox->email ?>">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Phone</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="phone" value="<?php echo  $inbox->phone ?>">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Query</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="query" value="<?php echo  $inbox->query ?>">
				  </div>
				</div>
              
              <div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Subject</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="subject" value="<?php echo  $inbox->subject ?>">
				  </div>
				</div>
				
              <div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Json</label>
				  <div class="col-sm-4">
					<input type="tect" id="description-field" class="form-control" name="json" value="<?php echo  $inbox->json ?>">
				  </div>
				</div>
				
			<div class=" form-group">
				  <label class="col-sm-2 control-label">&nbsp;</label>
				  <div class="col-sm-4">
				  <button type="submit" class="btn btn-primary">Update</button>
				  <a href="<?php echo site_url('contactus2/update2_view'); ?>" class="btn btn-secondary">Cancle</a>
				</div>
				</div>	
			  </form>
			</div>
		</section>
	</div>
</div>











