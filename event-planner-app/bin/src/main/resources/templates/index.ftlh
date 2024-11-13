<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.3/dist/minty/bootstrap.min.css" integrity="sha256-X08VWhrLbfhaM0zE3n7Q7Mg9YVevZcIBFzpvSCWAWmo=" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container mt-3">
    
    	<div class="row">
    		<div class="col fs-1">
		    	Events
		    	<a href="addEvent" class="btn btn-success">Create a new event</a>
		    </div>
		    
    	</div>


        <#if events?size gt 0>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Event</th>
                    <th>Date</th>
                    <th>Created By</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <#list events as event>
                <tr>
                    <td><a href="viewEvent/${event.id}" class="link-primary">${event.eventName}</a></td>
                    <td>${event.eventDate}</td>
                    <td>${event.createdBy}</td>
                    <td><a href="edit/${event.id}" class="btn btn-primary">Edit</a></td>
                </tr>
                </#list>
            </tbody>
        </table>
        <#else>
            <p>No events found</p>
        </#if>
    </div>
</body>
</html>