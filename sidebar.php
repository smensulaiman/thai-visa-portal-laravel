<div class="wrapper">
	<div class="sidebar" data-color="black">
		<!--
			Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
		-->
		<div class="logo">
			<a href="<?php echo DOMAIN . ROOT_URL ?>" class="simple-text logo-mini"> TA </a>
			<a href="<?php echo DOMAIN . ROOT_URL ?>" class="simple-text logo-normal"> <?=APP_NAME?> </a>
		</div>
		<div class="sidebar-wrapper" id="sidebar-wrapper">
			<ul class="nav">
				<li class="<?php if($current_page=='index'){echo 'active';} ?> ">
					<a href="<?= ROOT_URL ?>">
						<i class="now-ui-icons design_app"></i>
						<p>Home</p>
					</a>
				</li>
				<li class="<?php if($current_page=='add_new'){echo 'active';} ?> ">
					<a href="add.php">
						<i class="now-ui-icons ui-1_simple-add"></i>
						<p>Add Files</p>
					</a>
				</li>
				<li class="<?php if($current_page=='all_files'){echo 'active';} ?> ">
					<a href="files.php">
						<i class="now-ui-icons files_paper"></i>
						<p>All Pending Files</p>
					</a>
				</li>
				<li class="<?php if($current_page=='completed_files'){echo 'active';} ?> ">
					<a href="completed_results.php">
						<i class="now-ui-icons ui-1_check"></i>
						<p>Completed Files</p>
					</a>
				</li>
				<li class="<?php if($current_page=='completed_stats'){echo 'active';} ?> ">
					<a href="completed_statistics.php">
						<i class="now-ui-icons media-2_sound-wave"></i>
						<p>Statistics</p>
					</a>
				</li>
				<?php if (isAdmin()) : ?>
				<li class="<?php if($current_page=='create_agent'){echo 'active';} ?> ">
					<a href="create-user.php">
						<i class="now-ui-icons users_single-02"></i>
						<p>Create Agent</p>
					</a>
				</li>
				<?php endif; ?>
				<li style="margin-top:40px;">
					<a href="logout.php">
						<i class="now-ui-icons arrows-1_share-66"></i>
						<p>Logout</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
