<div class="row" style="padding:1% 0">
	<div class="col-md-12">
		<div class="pull-right">
			<a href="<?php echo site_url('contactus2/insert'); ?>" class="btn btn-primary pull-right"><i class="icon-long-arrow-left"></i>&nbsp;Back</a>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
	    <section class="panel">
		    <header class="panel-heading">
				 Create User
			</header>
			<div class="panel-body">
			  <form class="form-horizontal tasi-form" class="table table-bordered" method="post" action="<?php echo site_url('usercon/insert');?>" enctype= "multipart/form-data">
				<div class="form-group">
				  <label class="col-sm-2 control-label" for="normal-field"></label>
				  <div class="col-sm-4">
					<input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id');?>">
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
				<input type="email" id="description-field" class="form-control" name="email" value="<?php echo set_value('email');?>">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label" for="description-field"> Password</label>
				  <div class="col-sm-4">
<input type="password" id="description-field" class="form-control" name="password" value="<?php echo set_value('password');?>">
				  </div>
				</div>
				<div class=" form-group">
				  <label class="col-sm-2 control-label">&nbsp;</label>
				  <div class="col-sm-4">
				  <button type="submit" class="btn btn-primary">Save</button>
				  <a href="<?php echo site_url('usercon/insert'); ?>" class="btn btn-secondary">Cancle</a>
				</div>
				</div>	
			  </form>
			</div>
		</section>
	</div>
</div>











