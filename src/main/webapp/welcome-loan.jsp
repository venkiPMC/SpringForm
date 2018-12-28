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

                  <div class="price-slider">
                    <h4 class="great">Amount</h4>
                    <span>Minimum $100K is required</span>
                    <div class="col-sm-12">
                      <div id="slider_amirol"></div>
                    </div>
                  </div>
                  <div class="price-slider">
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
                  </div>
                  <div class="price-slider">
                    <h4 class="great">Term</h4>
                    <span>Please choose one</span>
                      <input name="sliderVal" type="hidden" id="sliderVal" value='0' readonly="readonly" />
                <input name="month" type="hidden" id="month" value='24month' readonly="readonly" />
                <input name="term" type="hidden" id="term" value='quarterly' readonly="readonly" />
                      <div class="btn-group btn-group-justified">
                        <div class="btn-group btn-group-lg">
                    <button type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term" id='quarterly'>Quarterly</button>
                  </div>
                        <div class="btn-group btn-group-lg">
                          <button type="button" class="btn btn-primary btn-lg btn-block term" id='monthly'>Monthly</button>
                  </div>
                        <div class="btn-group btn-group-lg">
                          <button type="button" class="btn btn-primary btn-lg btn-block term" id='weekly'>Weekly</button>
                        </div>
                      </div>
                  </div>
              </div>
              <div class="col-sm-6">
                <div class="price-form">

                  <div class="form-group">
                      <div class="row">
                        <div class="col-sm-6">
                          <label for="amount_amirol" class="control-label">Annually ($): </label>
                          <span class="help-text">Amount that you need to pay</span>
                        </div>
                        <div class="col-sm-6">
                            <input type="hidden" id="amount_amirol" class="form-control">
                            <!-- <p class="price lead" id="total"></p> -->
                            <input class="price lead" name="totalprice" type="text" id="total" disabled="disabled" style="" />
                        </div>
                    </div>
                    </div>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-sm-6">
                          <label for="amount_amirol" class="control-label">Monthly ($): </label>
                          <span class="help-text">Amount that you need to pay</span>
                        </div>
                        <div class="col-sm-6">
                            <input type="hidden" id="amount_amirol" class="form-control">
                            <!-- <p class="price lead" id="total12"></p> -->
                            <input class="price lead" name="totalprice12" type="text" id="total12" disabled="disabled" style="" />
                        </div>
                    </div>
                    </div>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-sm-6">
                          <label for="amount_amirol" class="control-label">Weekly ($): </label>
                          <span class="help-text">Amount that you need to pay</span>
                        </div>
                        <div class="col-sm-6">
                            <input type="hidden" id="amount_amirol" class="form-control">
                            <!-- <p class="price lead" id="total52"></p> -->
                            <input class="price lead" name="totalprice52" type="text" id="total52" disabled="disabled" style="" />
                        </div>
                    </div>
                    </div>
                    <div style="margin-top:30px"></div>
                    <hr class="style">

                  <div class="form-group">
                      <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Proceed <span class="glyphicon glyphicon-chevron-right"></span></button>
                      </div>
                  </div>
                    <div class="form-group">
                      <div class="col-sm-12">
                          <img src="https://github.com/AmirolAhmad/Bootstrap-Calculator/blob/master/images/payment.png?raw=true" class="img-responsive payment" />
                      </div>
                    </div>

                  </div>

                </form>
            </div>
            <p class="text-center" style="padding-top:10px;font-size:12px;color:#2c3e50;font-style:italic;">Created by <a href="https://twitter.com/AmirolAhmad" target="_blank">AmirolAhmad</a></p>
        </div>

          </div>

      </div>
<!-- /container -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<!--  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>--> 
<script src="${contextPath}/resources/js/new.js"></script>
</body>
</html>
