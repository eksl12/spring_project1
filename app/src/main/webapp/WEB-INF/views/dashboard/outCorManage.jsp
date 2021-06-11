<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<script>
$(document).ready(function(){
	if("${state}"!="")
		alert("${state}");
});

function writeIncor(){
	if($("#newIncor").css("display") == "none")	
		$("#newIncor").show();
	else
		$("#newIncor").hide();	
}

</script>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="/static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/static/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/static/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/static/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
  <div class="container body">
<div class="right_col" role="main" style="min-height: 1100px;">
<div class="">
<div class="page-title">
<div class="title_left">
<h3>출고처</h3>
</div>
<div class="title_right">
<div class="col-md-5 col-sm-5 form-group pull-right top_search">
<div class="input-group">
<button type="button" class="btn btn-round btn-success" onClick="writeIncor()">입고처작성</button>
<input type="text" class="form-control" placeholder="Search for...">
<span class="input-group-btn">
<button class="btn btn-default" type="button">Go!</button>
</span>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12">
<div class="x_panel" id="newIncor" style="display: none">
<div class="x_title">
<h2>출고처등록 <small>sub title</small></h2>
<ul class="nav navbar-right panel_toolbox">
<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
</li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
<a class="dropdown-item" href="#">Settings 1</a>
<a class="dropdown-item" href="#">Settings 2</a>
</div>
</li>
<li><a class="close-link"><i class="fa fa-close"></i></a>
</li>
</ul>
<div class="clearfix"></div>
</div>
<div class="x_content">
<form class="" action="/cor/out" method="post" novalidate="">
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">업체명<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" data-validate-length-range="6" data-validate-words="2" name="pName" placeholder="업체명" required="required">
</div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Occupation<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" name="occupation" data-validate-length-range="5,15" type="text"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">email<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" name="email" required="required" type="email"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Confirm email address<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="email" name="confirm_email" data-validate-linked="email" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Number <span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="number" name="number" data-validate-minmax="10,100" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Date<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="date" name="date" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Time<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="time" name="time" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Password<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="password" name="password" data-validate-length="6,8" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Repeat password<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="password" name="password2" data-validate-linked="password" required="required"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">Telephone<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<input class="form-control" type="tel" name="phone" required="required" data-validate-length-range="8,20"></div>
</div>
<div class="field item form-group">
<label class="col-form-label col-md-3 col-sm-3  label-align">message<span class="required">*</span></label>
<div class="col-md-6 col-sm-6">
<textarea required="required" name="message"></textarea></div>
</div>
<div class="ln_solid">
<div class="form-group">
<div class="col-md-6 offset-md-3">
<button type="submit" class="btn btn-primary">Submit</button>
<button type="reset" class="btn btn-success">Reset</button>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>


</div>
</div>
  
  </body>

<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js" data-cf-beacon="{&quot;rayId&quot;:&quot;659f286b9dd20ac4&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2021.5.2&quot;,&quot;si&quot;:10}"></script>

<tester id="tags_1_tag_autosize_tester" style="position: absolute; top: -9999px; left: -9999px; width: auto; font-size: 13px; font-family: helvetica; font-weight: 400; letter-spacing: 0px; white-space: nowrap;"></tester><div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div></body>
</html>