<form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="varchar">Lokasi <?php echo form_error('lokasi') ?></label>
            <input type="text" class="form-control" name="lokasi" id="lokasi" placeholder="Lokasi" value="<?php echo $lokasi; ?>" />
        </div>
	    <input type="hidden" name="id_lokasi" value="<?php echo $id_lokasi; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('admin/lokasi') ?>" class="btn btn-default">Cancel</a>
	</form>