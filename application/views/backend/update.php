<!--
<html>
<body>
<form action='<?php echo site_url("contactus1/update_view"); ?>' method="post">
       <?php print_r($inbox);?>
    

        <input type="hidden" name="id" value="<?php echo $inbox->id;?>">
        <br><br>


        Name:
        <input type="text" name="name" value="<?php echo  $inbox->name?>">
        <br><br>
        Status::
        <input type="text" name="status" value="<?php echo  $inbox->status?>">
        <br><br>
        Json:
        <input type="text" name="json" value="<?php echo  $inbox->json ?>">
        <br><br>
         Email:
        <input type="text" name="email" value="<?php echo  $inbox->email ?>">
        <br><br>
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
			  <form class="form-horizontal tasi-form" class="table table-bordered" method="post" action="<?php echo site_url('contactus1/update_view');?>" enctype= "multipart/form-data">
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Name</label>
				  <?php print_r($inbox);?>
				  <div class="col-sm-4">
				<input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo  $inbox->id?>">
					<input type="text" id="normal-field" class="form-control" name="name" value="<?php echo  $inbox->name?>">
				  </div>
				</div>
              
              <div class="form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Status</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="status" value="<?php echo  $inbox->status?>">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Json</label>
				  <div class="col-sm-4">
					<input type="tect" id="description-field" class="form-control" name="json" value="<?php echo  $inbox->json ?>">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field">Email</label>
				  <div class="col-sm-4">
					<input type="email" id="description-field" class="form-control" name="email" value="<?php echo  $inbox->email ?>">
				  </div>
				</div>
	
			<div class=" form-group">
				  <label class="col-sm-2 control-label">&nbsp;</label>
				  <div class="col-sm-4">
				  <button type="submit" class="btn btn-primary">Update</button>
				  <a href="<?php echo site_url('contactus1/update_view'); ?>" class="btn btn-secondary">Cancel</a>
				</div>
				</div>	
			  </form>
			</div>
		</section>
	</div>
</div>











