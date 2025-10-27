<section id="sidebar">
		<a href="#" class="brand">
			<img src="img/logos.jpeg" alt="piglogo" width="64px" height="64px">
			<span class="text">Ronald's Baboyan</span>
		</a>
		<ul class="side-menu top">
			<li>
				<a href="dashboard.php">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="pigbreeders.php">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Pig Breeders</span>
				</a>
			</li>
			<li>
				<a href="piggrowingphase.php">
					<i class='bx bxs-doughnut-chart'></i>
					<span class="text">Piglets Growing Phase</span>
				</a>	
			</li>
			<li>
				<a href="inventory.php">
					<i class='bx bx-clipboard' ></i>
					<span class="text">Inventory</span>
				</a>
			</li>
			<li class="has-submenu">
	<a href="#" class="submenu-toggle">
		<i class='bx bxs-store-alt'></i>
		<span class="text">Orders</span>
		<i class='bx bx-chevron-down dropdown-icon'></i>
	</a>
	<ul class="submenu">
		<li><a href="orders.php"><i class='bx bxs-doughnut-chart'></i>
		<span class="text">Pig Orders</span></a></li>
		<li><a href="cull_orders.php"><i class='bx bxs-doughnut-chart'></i>
		<span class="text">Cull Orders</span></a></li>
		<li><a href="piglet_orders.php"><i class='bx bxs-doughnut-chart'></i>
		<span class="text">Piglet Orders</span></a></li>
	</ul>
</li>
			<!-- <li>
				<a href="cull_orders.php">
					<i class='bx bxs-store-alt' ></i>
					<span class="text">Cull Orders</span>
				</a>
			</li> -->
			<li>
				<a href="customer.php">
					<i class='bx bxs-group' ></i>
					<span class="text">Customers</span>
				</a>
			</li>
			
			<li>
				<a href="sales.php">
					<i class='bx bx-money' ></i>
					<span class="text">Sales</span>
				</a>
			</li>
			
			<li>
				<a href="messages.php">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Messages</span>
				</a>
			</li>
			<li>
				<a href="culling.php">
				<i class='bx bxs-doughnut-chart'></i>
					<span class="text">Candidates For Culling</span>
				</a>
			</li>
		
		<!-- </ul>
		<ul class="side-menu"> -->
			<li>
				<a href="managepage.php">
					<i class='bx bxs-cog' ></i>
					<span class="text">Manage Page</span>
				</a>
			</li>
			<li>
				<a href="unhealthypiglets.php">
				<i class='bx bxs-injection'></i>
					<span class="text">UnHealthy Piglets</span>
				</a>
			</li>
			<li>
				<a href="#" id="logoutlinks" class="logout" data-bs-toggle="modal" data-bs-target="#logoutModal">
	<i class='bx bxs-log-out-circle'></i>
	<span class="text">Logout</span>
</a>
			</li>
		</ul>
	</section>

	<div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="logoutModalLabel">Confirm Logout</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				Are you sure you want to log out?
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
				<a href="logout.php" class="btn btn-danger">Yes, Log Out</a>
			</div>
		</div>
	</div>
</div>
    <!-- <script src="js/swal.js"></script>   -->
	<script>
		document.querySelectorAll('.submenu-toggle').forEach(toggle => {
	toggle.addEventListener('click', function (e) {
		e.preventDefault(); // prevent the # link jump
		const parent = this.closest('.has-submenu');
		parent.classList.toggle('open');
	});
});


// document.getElementById("logoutlinks").addEventListener("click", function(e) {
//     e.preventDefault();

//     Swal.fire({
//         title: "Are you sure you want to log out?",
//         icon: "warning",
//         showCancelButton: true,
//         confirmButtonText: "Yes, log out",
//         cancelButtonText: "Cancel"
//     }).then((result) => {
//         if (result.isConfirmed) {
//             window.location.href = "logout.php";
//         }
//     });
// });

// document.getElementById("logoutlinks").addEventListener("click", function(e) {
//     e.preventDefault(); // prevent the default link click action
//     var confirmAction = confirm("Are you sure you want to log out?");
//     if (confirmAction) {
//         // If user confirms logout, redirect to logout.php
//         window.location.href = "logout.php";
//     }
// });
</script>