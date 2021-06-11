<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<div class="modal fade bs-example-modal-lg show" tabindex="-1"
	role="dialog" style="display: none;" aria-modal="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">입고처등록</h4>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
						<form id="InCorWrite" novalidate="">
				<div class="col-md-12 col-sm-12">
					<div class="x_panel">
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
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-round btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-round btn-success" onClick="InCorWrite()">등록</button>
				</div>
			</form>
			</div>
		</div>
	</div>
	</div>