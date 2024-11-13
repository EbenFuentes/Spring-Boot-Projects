<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Details</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.3/dist/minty/bootstrap.min.css" integrity="sha256-X08VWhrLbfhaM0zE3n7Q7Mg9YVevZcIBFzpvSCWAWmo=" crossorigin="anonymous">
</head>
<body class="bg-light">

	<div class="container">
		<div class="row mt-3">
			<div class="col">
			<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active ">${event.eventName}</li>
			</ol>
		</div>
		</div>

		<div class="row">
			<div class="col-8 mx-auto">
				<div class="card text-white bg-info ms-3 ">
					<div class="card-header text-center">Event</div>
					<div class="card-body">
						<h4 class="card-title text-center">${event.eventName}</h4>
						<p class="card-text text-center">
							Date <i class="bi bi-calendar-event"></i> : ${event.eventDate}<br>
							Host: ${event.createdBy}
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row mt-3 bg-light">
			<div class="col-4">
				<h2>Items for ${event.eventName}:</h2>
			</div>
			<div class="col-8 ">
				<a href="/addItem/${event.id}" class="btn btn-success">Add Item</a>
				<button id="toggleButton" class="btn btn-dark">Show Items Available for Sign Up</button>      
			</div>
		
		</div>


       

        <ul class="list-group mt-3">
            <#list event.items as item>
            <li class="list-group-item ${item.isUserSignedUp?string('signed-up', '')}">
                <a href="/deleteItem/${event.id}/${item.id}" class="btn btn-danger btn-sm"><i class="bi bi-x-lg"></i></a>
                1 of ${item.name}
                <#if item.isUserSignedUp>
                    / Signed up by: ${item.providingUser}
                <#else>
                    <a href="/signupForItem/${event.id}/${item.id}" class="btn btn-primary btn-sm">Sign Up</a>
                </#if>
            </li>
            </#list>
        </ul>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#toggleButton').click(function() {
                $('.signed-up').toggle();
                if ($('.signed-up').is(':visible')) {
                    $('#toggleButton').text('Show Items Available for Sign Up');
                } else {
                    $('#toggleButton').text('Show All Items');
                }
            });
        });
    </script>

</body>
</html>
