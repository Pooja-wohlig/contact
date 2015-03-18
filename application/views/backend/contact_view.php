<div class="row" style="padding:1% 0">
	<div class="col-md-12">
		<div class="pull-right">
			<a href="<?php echo site_url('contactus2/insertsubmit'); ?>" class="btn btn-primary pull-right"><i class="icon-long-arrow-left"></i>&nbsp;Back</a>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
	    <section class="panel">
		    <header class="panel-heading">
				 Contact Us
			</header>
			<div class="panel-body">
			  <form class="form-horizontal tasi-form" class="table table-bordered" method="post" action="<?php echo site_url('contactus2/insertsubmit');?>" enctype= "multipart/form-data">
				<div class="form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Website</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="website" value="<?php echo set_value('website');?>">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Name</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="name" value="<?php echo set_value('name');?>">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field">email</label>
				  <div class="col-sm-4">
					<input type="email" id="description-field" class="form-control" name="email" value="">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Phone</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="phone" value="">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Query</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="query" value="">
				  </div>
				</div>
              
              <div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Subject</label>
				  <div class="col-sm-4">
					<input type="text" id="description-field" class="form-control" name="subject" value="">
				  </div>
				</div>
				
              <div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Json</label>
				  <div class="col-sm-4">
					<input type="tect" id="description-field" class="form-control" name="json" value="">
				  </div>
				</div>
				
<!--
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">Contact</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="contact" value="<?php echo set_value('contact');?>">
				  </div>
				</div>
				
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">City</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" style="text-transform:capitalize" name="city" value="<?php echo set_value('city');?>">
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="normal-field">DOB</label>
				  <div class="col-sm-4">
					<input type="date" id="d" class="form-control" name="dob" value="<?php echo set_value('dob');?>">
				  </div>
				</div>
				<div class=" form-group" style="display:none;">
				  <label class="col-sm-2 control-label" for="normal-field">facebookid</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="facebookid" value="<?php echo set_value('facebookid');?>">
				  </div>
				</div>
				
				
				<div class=" form-group" style="display:none;">
				  <label class="col-sm-2 control-label" for="normal-field">twitterid</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="twitterid" value="<?php echo set_value('twitterid');?>">
				  </div>
				</div>
				
				
				<div class=" form-group" style="display:none;">
				  <label class="col-sm-2 control-label" for="normal-field">instagramid</label>
				  <div class="col-sm-4">
					<input type="text" id="normal-field" class="form-control" name="instagramid" value="<?php echo set_value('instagramid');?>">
				  </div>
				</div>
				
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label">Gender</label>
				  <div class="col-sm-4">
					<?php
						
						echo form_dropdown('sex',$sex,set_value('sex'),'class="chzn-select form-control" 	data-placeholder="Choose a Accesslevel..."');
					?>
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label">Status</label>
				  <div class="col-sm-4">
					<?php
						
						echo form_dropdown('status',$status,set_value('status'),'class="chzn-select form-control" 	data-placeholder="Choose a Accesslevel..."');
					?>
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label">college</label>
				  <div class="col-sm-4">
					<?php
						
						echo form_dropdown('college',$college,set_value('college'),'class="chzn-select form-control" 	data-placeholder="Choose a Accesslevel..."');
					?>
				  </div>
				</div>
				
				<div class=" form-group">
				  <label class="col-sm-2 control-label">Select Accesslevel</label>
				  <div class="col-sm-4">
					<?php 	 echo form_dropdown('accesslevel',$accesslevel,set_value('accesslevel'),'id="accesslevelid" onchange="operatorcategories()" class="chzn-select form-control" 	data-placeholder="Choose a Accesslevel..."');
					?>
				  </div>
				</div>    
				
-->
				<div class=" form-group">
				  <label class="col-sm-2 control-label">&nbsp;</label>
				  <div class="col-sm-4">
				  <button type="submit" class="btn btn-primary">Save</button>
				  <a href="<?php echo site_url('contactus2/viewall'); ?>" class="btn btn-secondary">Cancel</a>
				</div>
				</div>	
			  </form>
			</div>
		</section>
	</div>
</div>











