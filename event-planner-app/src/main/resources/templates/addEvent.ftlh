<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Event</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.3/dist/minty/bootstrap.min.css"
	integrity="sha256-X08VWhrLbfhaM0zE3n7Q7Mg9YVevZcIBFzpvSCWAWmo="
	crossorigin="anonymous">
</head>
<body class="bg-light">

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-white bg-primary mt-5 mx-auto">
					<div class="card-header text-center">Add Event</div>
					<div class="card-body">
						<form method="post">

							<div class="mb-3 col-6 mx-auto">
								<label for="eventName" class="form-label">Name</label> <input
									type="text" class="form-control" name="eventName"
									id="eventName" placeholder="What is the name of your event?">
							</div>

							<div class="mb-3 col-6 mx-auto">
								<label for="createdBy" class="form-label">Creator</label> <input
									type="text" class="form-control" name="createdBy"
									id="createdBy" placeholder="Who is creating the event?">
							</div>

							<div class="mb-3 col-6 mx-auto">
								<label for="eventName" class="form-label">Date</label> <input
									type="date" class="form-control" name="eventDate"
									id="eventDate">
							</div>

							<div class="mx-auto" style="width: 200px;">
								<button type="submit" class="btn btn-success btn-lg">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>