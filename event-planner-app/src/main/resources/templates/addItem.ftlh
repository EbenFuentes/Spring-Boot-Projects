<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.3/dist/minty/bootstrap.min.css" integrity="sha256-X08VWhrLbfhaM0zE3n7Q7Mg9YVevZcIBFzpvSCWAWmo=" crossorigin="anonymous">
</head>
<body class="bg-primary">
    <div class="container mt-3 bg-light">
    	
    	<div class="row pt-3">
    		<h2 class="text-center">Add Item to Event: ${event.eventName}</h2>
    	</div>
    	
    		<div class="row mx-auto">
				<form action="/addItem/${event.id}" method="post" class="my-3">
	            <div class="mb-3 col-6 mx-auto">
	                <label for="name" class="form-label">Item Name:</label>
	                <input type="text" id="name" name="name" required class="form-control">
	            </div>
	            
	            <div class="mb-3 col-6 mx-auto">
	                <label for="quantity" class="form-label">Quantity:</label>
	                <input type="number" id="quantity" name="quantity" value="1" min="1" required class="form-control">
            </div>
            
           <div class="mx-auto ps-5" style="width: 200px;">
								<button type="submit" class="btn btn-success btn-lg">Add Item</button>
			</div>
            

        	</form>
    	</div>
    	
    	
    </div>
    

        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>