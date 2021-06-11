<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<script>
	$(document).ready(function() {
		$.fn.serializeObject = function() {
  "use strict"
  var result = {}
  var extend = function(i, element) {
    var node = result[element.name]
    if ("undefined" !== typeof node && node !== null) {
      if ($.isArray(node)) {
        node.push(element.value)
      } else {
        result[element.name] = [node, element.value]
      }
    } else {
      result[element.name] = element.value
    }
  }

  $.each(this.serializeArray(), extend)
  return result
}

	});

	/* function writeIncor() {
		if ($("#newIncor").css("display") == "none"){

			$("#newIncor").show();
			$("#inCorList").hide();
		}
		else{
			$("#inCorList").show();
			$("#newIncor").hide();
		}
	

	}
	*/
	
	function InCorUpdate(){
	$.ajax({
		type:'POST',
		data: JSON.stringify($("#InCorUpdate").serializeObject()),
		url:"/cor/inUpdate",
		contentType: "application/json; charset=UTF-8",
		success : function(data) {
		  	window.location.reload();
			
		}
		});
	}
	function InCorWrite(){
	$.ajax({
		type:'POST',
		data: JSON.stringify($("#InCorWrite").serializeObject()),
		url:"/cor/in",
		contentType: "application/json; charset=UTF-8",
		success : function(data) {
		  	window.location.reload();
			
		}
		});	
		
	}	
	
	function getIncor(id){
		$.ajax({
			type:'GET',
			url:"/cor/selectIn/"+id,
			contentType: "application/json; charset=UTF-8",
			success : function(data) {
			$("#id").val(id);
			$("input[name='pName']").val(data.pName);
			$("input[name='charge']").val(data.charge);
			$("input[name='number']").val(data.number);
			$("input[name='fax']").val(data.fax);
			$("input[name='billMail']").val(data.billMail);
			$("input[name='billCharge']").val(data.billCharge);
			}
			});	
		}
		function checkAll(){
			if($("#check-all").is(':checked'))
				$('input:checkbox').prop('checked',true);
				
			else
				$('input:checkbox').prop('checked',false);
				
		}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gentelella Alela! |</title>

<!-- Bootstrap -->
<link href="/static/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="/static/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/static/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- Animate.css -->
<link href="/static/vendors/animate.css/animate.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/static/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="right_col" role="main" style="min-height: 1100px;">
			<div class="">
				<div class="page-title">
					<div class="title_left">
						<h3>입고처 관리</h3>
					</div>
					<div align="right">
						<button type="button" class="btn btn-round btn-success"
							data-toggle="modal" data-target=".bs-example-modal-lg">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							입고처 작성
						</button>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12 " id="">
						<div class="x_panel" id="inCorList">
							<div class="x_content">
								<div class="row">
									<div class="col-sm-12">
										<div class="card-box table-responsive">
											<div id="datatable-checkbox_wrapper"
												class="dataTables_wrapper container-fluid dt-bootstrap no-footer">
												<div class="row">

													<div class="col-sm-6">
														<div id="datatable-checkbox_filter"
															class="dataTables_filter">
															<label>Search:<input type="search"
																class="form-control" placeholder=""
																aria-controls="datatable-checkbox"></label>
															<button class="btn btn-secondary" type="button">검색!</button>
														</div>
													</div>
													<div class="col-sm-6">
														<div align="right" id="datatable-checkbox_length">
															<label>목록갯수: <select
																name="datatable-checkbox_length"
																aria-controls="datatable-checkbox"
																class="form-control input-sm"><option
																		value="10">10</option>
																	<option value="25">25</option>
																	<option value="50">50</option>
																	<option value="100">100</option>
															</select>
															</label>
														</div>
													</div>
												</div>
												<label>총 갯수:<c:out value="${fn:length(list)}" /></label>
												<div class="row">
													<div class="col-sm-12">
														<table id="datatable-checkbox"
															class="table table-striped table-bordered bulk_action dataTable no-footer"
															style="width: 100%;" role="grid"
															aria-describedby="datatable-checkbox_info">
															<thead>
																<tr role="row">
																	<th class="sorting_asc" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1" aria-sort="ascending"
																		aria-label=": activate to sort column descending"
																		style="width: 13px;"><input type="checkbox"
																		id="check-all" onClick="checkall()"></th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1"
																		aria-label="Name: activate to sort column ascending"
																		style="width: 68px;">Name</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 114px;">번호</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 50px;">팩스번호</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1"
																		aria-label="Age: activate to sort column ascending"
																		style="width: 25px;">담당자</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable-checkbox" rowspan="1"
																		colspan="1"
																		aria-label="Start date: activate to sort column ascending"
																		style="width: 47px;">일자</th>
															</thead>
															<tbody>
																<c:forEach var="vo" items="${list}">
																	<tr role="row" class="odd " data-toggle="modal"
																		data-target=".bs-example-modal-lg2"
																		onClick="getIncor(${vo.id})">
																	<a data-toggle="modal"
																		data-target=".bs-example-modal-lg2"
																		onClick="getIncor(${vo.id})">
																		<th class="sorting_1"><input type="checkbox"
																			id="check-${vo.id}"></th>
																		<td><c:out value="${vo.pName}" /></td>
																		<td><c:out value="${vo.number}" /></td>
																		<td><c:out value="${vo.fax}" /></td>
																		<td><c:out value="${vo.charge}" /></td>
																		<td><c:out value="${vo.regDate}" /></td>
																		</a>
																	</tr>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-7">
														<div class="dataTables_paginate paging_simple_numbers"
															id="datatable-checkbox_paginate">
															<ul class="pagination">
																<li class="paginate_button previous disabled"
																	id="datatable-checkbox_previous"><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="0"
																	tabindex="0">Previous</a></li>
																<li class="paginate_button active"><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="1"
																	tabindex="0">1</a></li>
																<li class="paginate_button "><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="2"
																	tabindex="0">2</a></li>
																<li class="paginate_button "><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="3"
																	tabindex="0">3</a></li>
																<li class="paginate_button "><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="4"
																	tabindex="0">4</a></li>
																<li class="paginate_button "><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="5"
																	tabindex="0">5</a></li>
																<li class="paginate_button "><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="6"
																	tabindex="0">6</a></li>
																<li class="paginate_button next"
																	id="datatable-checkbox_next"><a href="#"
																	aria-controls="datatable-checkbox" data-dt-idx="7"
																	tabindex="0">Next</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="col-md-12 col-sm-12">
						<div class="x_panel" id="newIncor" style="display: none">
							<div class="x_title">
								<h2>
									입고처등록 <small>sub title</small>
								</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Settings 1</a> <a
												class="dropdown-item" href="#">Settings 2</a>
										</div></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form class="" action="/cor/in" method="post" novalidate="">
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">업체명<span
											class="required">*</span></label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" data-validate-length-range="6"
												data-validate-words="2" name="pName" placeholder="업체명"
												required="required">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">담당자</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" name="charge"
												data-validate-length-range="3,15" type="text">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">계산서메일</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" name="billMail" type="email">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">계산서메일확인</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" type="email" name="confirm_email"
												data-validate-linked="billMail">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">휴대폰</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" type="tel" name="number"
												data-validate-length-range="8,20">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">팩스번호</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" type="tel" name="number"
												data-validate-length-range="8,20">
										</div>
									</div>
									<div class="field item form-group">
										<label class="col-form-label col-md-3 col-sm-3  label-align">사업자번호
										</label>
										<div class="col-md-6 col-sm-6">
											<input class="form-control" type="number" name="corNumber"
												data-validate-minmax="10,100">
										</div>
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
				</div> -->
					<jsp:include page="InCorWrite.jsp" />
					<jsp:include page="InCorUpdate.jsp" />
					<jsp:include page="InCorView.jsp" />
				</div>
			</div>

		</div>
	</div>

</body>

<script defer=""
	src="https://static.cloudflareinsights.com/beacon.min.js"
	data-cf-beacon="{&quot;rayId&quot;:&quot;659f286b9dd20ac4&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2021.5.2&quot;,&quot;si&quot;:10}"></script>

<tester id="tags_1_tag_autosize_tester"
	style="position: absolute; top: -9999px; left: -9999px; width: auto; font-size: 13px; font-family: helvetica; font-weight: 400; letter-spacing: 0px; white-space: nowrap;"></tester>
<div class="autocomplete-suggestions"
	style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
</body>
</html>