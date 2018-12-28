<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
     <link href="${contextPath}/resources/css/new.css" rel="stylesheet">
  

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
</head>
<body>
<div class="container">
      <div class="price-box">
        <div class="row">
          <div class="col-sm-6">
                <form class="form-horizontal form-pricing" role="form">

              <div class="md-form mt-3">
                  <h4 class="great">Name</h4>
                	<input type="text" id="materialContactFormName" class="form-control">
                	
           		 </div>
           		 
           		 <br>
           		 
           		   <div class="md-form mt-3">
                  <h4 class="great">Age</h4>
                	<input type="text" id="materialContactFormName" class="form-control">
                	
           		 </div>
           		 
           		 <br>
           		 
           		   <div class="md-form mt-3">
                  <h4 class="great">Sum Assured</h4>
                	<input type="text" id="materialContactFormName" class="form-control">
                	
           		 </div>
                  
                 <!--   <div class="price-slider">
                    <h4 class="great">Duration</h4>
                    <span>Please choose one</span>
                    <div class="btn-group btn-group-justified">
                      <div class="btn-group btn-group-lg">
                        <button type="button" class="btn btn-primary btn-lg btn-block month active-month selected-month" id='24month'>24 Months</button>
                      </div>
                      <div class="btn-group btn-group-lg">
                        <button type="button" class="btn btn-primary btn-lg btn-block month" id='18month'>18 Months</button>
                      </div>
                      <div class="btn-group btn-group-lg">
                        <button type="button" class="btn btn-primary btn-lg btn-block month" id='12month'>12 Months</button>
                      </div>
                    </div>
                  </div>-->
                  
                  <button class="btn btn-lg btn-primary btn-block" type="button" onclick="">Log In</button>
                  </form>
                  </div>
                  
                  
        <!--       <div class="col-sm-6">
              
              <div class="md-form mt-3">
              
                 <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                	
           		 </div>
           		 
               </div> -->
               
               <div class="col-sm-6">
              
              <div class="md-form mt-3">
              <div id="chartContainer" style="height: 370px; width: 100;"></div>
                <!--  <div id="chartContainerB" style="height: 370px; width: 100%;"></div> -->
                  <!-- <div id="chartContainer" style="height: 370px; width: 100%;"></div> -->
                	
           		 </div>
           		 
               </div>
            <br>
           
        </div>

 <p class="text-center" style="padding-top:10px;font-size:12px;color:#2c3e50;font-style:italic;">Created by <a href="#" target="_blank">Venkat</a></p>
          </div>

      </div>


<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Premium"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		//yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: 500000, label: "sum"},
			{y: 50000, label: "premi"},
			//{y: 7.06, label: "Baidu"},
			//{y: 4.91, label: "Yahoo"},
			//{y: 1.26, label: "Others"}
		]
	}]
});
chart.render();

}
</script>

<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainerB", {
	exportEnabled: true,
	animationEnabled: true,
	title:{
		text: "State Operating Funds"
	},
	legend:{
		cursor: "pointer",
		itemclick: explodePie
	},
	data: [{
		type: "pie",
		showInLegend: true,
		toolTipContent: "{name}: <strong>{y}%</strong>",
		indexLabel: "{name} - {y}%",
		dataPoints: [
			{ y: 26, name: "School Aid", exploded: true },
			{ y: 20, name: "Medical Aid" },
		
		]
	}]
});
chart.render();
}

function explodePie (e) {
	if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
	} else {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
	}
	e.chart.render();

}
</script>

<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Temperature of Each Boiler"
	},
	axisY: {
		title: "Temperature (°C)",
		suffix: " °C"
	},
	data: [{
		type: "column",	
		yValueFormatString: "#,### °C",
		indexLabel: "{y}",
		dataPoints: [
			{ label: "boiler1", y: 206 },
			{ label: "boiler2", y: 163 },
			{ label: "boiler3", y: 154 },
			{ label: "boiler4", y: 176 },
			{ label: "boiler5", y: 184 },
			{ label: "boiler6", y: 122 }
		]
	}]
});

function updateChart() {
	var boilerColor, deltaY, yVal;
	var dps = chart.options.data[0].dataPoints;
	for (var i = 0; i < dps.length; i++) {
		deltaY = Math.round(2 + Math.random() *(-2-2));
		yVal = deltaY + dps[i].y > 0 ? dps[i].y + deltaY : 0;
		boilerColor = yVal > 200 ? "#FF2500" : yVal >= 170 ? "#FF6000" : yVal < 170 ? "#6B8E23 " : null;
		dps[i] = {label: "Boiler "+(i+1) , y: yVal, color: boilerColor};
	}
	chart.options.data[0].dataPoints = dps; 
	chart.render();
};
updateChart();

setInterval(function() {updateChart()}, 500);

}
</script>

<!-- /container -->

<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
 <script src="${contextPath}/resources/js/new.js"></script>
 <script src="${contextPath}/resources/js/bootstrap.min.js"></script> 
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
