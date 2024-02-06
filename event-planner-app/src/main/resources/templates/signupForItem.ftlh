<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up for Item</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.3/dist/minty/bootstrap.min.css" integrity="sha256-X08VWhrLbfhaM0zE3n7Q7Mg9YVevZcIBFzpvSCWAWmo=" crossorigin="anonymous">
</head>
<body class="bg-primary"> 
    <div class="container bg-light">
    	<div class="row pt-3">
    		<h2 class="text-center">Sign Up for Item: ${item.name}</h2>
    	</div>
    	
    	<div class="row mx-auto my-3">
			<form action="/signupForItem/${event.id}/${item.id}" method="post" class="my-3">
	           <div class="mb-3 col-6 mx-auto">
	                <label for="userName" class="form-label">Your Name:</label>
	                <input type="text" id="userName" name="userName" required class="form-control">
	           </div>
	           <div class="mx-auto ps-5" style="width: 200px;">
					<button type="submit" class="btn btn-success btn-lg mb-3">Sign Up</button>
				</div>  
	        </form>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
