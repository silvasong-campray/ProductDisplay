<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>苏宁</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="../assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<link
	href="../assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.Metronic.css"
	rel="stylesheet" type="text/css" />
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="../assets/global/plugins/select2/css/select2.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->

<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->

<link href="../static/css/style-shop.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="../assets/global/plugins/bootstrap-select/bootstrap-select.min.css" />

<link href="../assets/global/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="../assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="../assets/admin/layout/css/layout.css" rel="stylesheet"
	type="text/css" />
<link href="../assets/admin/layout/css/themes/darkblue.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="../assets/admin/layout/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="../static/img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="../static/css/main.css" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-quick-sidebar-over-content">
	<!-- BEGIN HEADER -->
	<c:import url="/common/header" />
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
	    <%-- <c:import url="/common/left" />  --%>
	     <div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
				<li class="start active open">
					<a href="javascript:;">
					<i class="icon-film"></i>
					<span class="title">综合类电商网站</span>
					<span class="selected"></span>
					<span class="arrow open"></span>
					</a>
					<ul class="sub-menu">
						<li class="active">
							<a href="${pageContext.request.contextPath}/product/suning">
							<i class="icon-direction"></i>
							苏宁</a>
						</li>
						
					</ul>
				</li> 
				<li class="start ">
					<a href="javascript:;">
					<i class="icon-layers"></i>
					<span class="title">时尚类电商网站</span>
					<span class="selected"></span>
					<span class="arrow open"></span>
					</a>
					<ul class="sub-menu">
						<li class="active">
							<a href="${pageContext.request.contextPath}/product/nat_a_porter">
							<i class="icon-direction"></i>
							NET-A-PORTER</a>
						</li>
						
					</ul>
				</li>
				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SEARCH FORM -->
				<div class="portlet-body">
					<form id="searchForm" name="searchForm" class="form-horizontal"
						method="post">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">商品类别</label>
									<div class="col-md-9">
										<select class="form-control bs-select" id="category-one"
											data-size="10" name="category-one">
											<option value="" selected="selected">所有</option>
											<c:forEach var="cate" items="${categoryOne}">
												<option value="${cate}">${cate}</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<!--/span-->
							<div class="col-md-3">
								<div class="form-group">
									<div class="col-md-12">
										<select class="form-control bs-select" id="category-two"
											data-size="10" name="category-two">
											<option value="" selected="selected">所有</option>

										</select>
									</div>
								</div>
							</div>
							<!--/span-->
							<div class="col-md-3">
								<div class="form-group">
									<div class="col-md-12">
										<select class="form-control bs-select" id="category-three"
											data-size="10" name="category-three">
											<option value="" selected="selected">所有</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							    <div class="col-md-12">
								<div class="form-group">
									<label class="control-label col-md-1">店铺类型</label>
									<div class="col-md-9">
										<div class="radio-list">
											<label class="radio-inline"> <input type="radio"
												name="vendorName" value="0" checked />所有
											</label> <label class="radio-inline"> <input type="radio"
												name="vendorName" value="1" />苏宁自营
											</label> <label class="radio-inline"> <input type="radio"
												name="vendorName" value="2" />第三方店铺
											</label>

										</div>
									</div>
								</div>
							
							<!--/span-->

                           </div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">价格区间</label>
									<div class="col-md-9">
										<div class="input-group input-large">
											<input type="text" class="form-control" name="price_from">
											<span class="input-group-addon"> to </span> <input
												type="text" class="form-control" name="price_to">
										</div>

									</div>
								</div>
							</div>
							<!--/span-->
                            <div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">差价区间</label>
									<div class="col-md-9">
										<div class="input-group input-large">
											<input type="text" class="form-control" name="disprice_from">
											<span class="input-group-addon"> to </span> <input
												type="text" class="form-control" name="disprice_to">
										</div>

									</div>
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="col-md-offset-3 col-md-9">
										<button type="submit" class="btn blue">
											Search <i class="fa fa-search"></i>
										</button>
										<button type="reset" class="btn grey-cascade">
											Reset <i class="fa fa-reply"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								<label class="control-label col-md-3">更新时间</label>
							        <div class="col-md-9">
										<p class="form-control-static">
											<font color="red">${createtime}</font>
										</p>
								    </div>
							   </div>
							</div>
						</div>
					</form>

				</div>
				<!-- END SEARCH FORM -->

				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet  box green">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-edit"></i>苏宁
								</div>
								<div class="actions">
								    <a class="btn btn-default btn-sm" id="proprice_sort">ProPrice<i class="fa fa-arrow-down"></i></a>
								    <a class="btn btn-default btn-sm" id="netprice_sort">NetPrice<i class="fa fa-arrow-down"></i></a>
								    <a class="btn btn-default btn-sm" id="disprice_sort">DisPrice<i class="fa fa-arrow-down"></i></a>
									<div class="btn-group">
										<a class="btn default" href="#" data-toggle="dropdown">
											Columns <i class="fa fa-angle-down"></i>
										</a>
										<div id="column_toggler"
											class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="0">PartNumber</label>
											<label><input type="checkbox" checked data-column="1">Name</label>
											<label><input type="checkbox" checked data-column="2">NetPrice</label>
											<label><input type="checkbox" checked data-column="3">PromotionPrice</label>
											<label><input type="checkbox" checked data-column="4">Vendor</label>
											<label><input type="checkbox" checked data-column="4">Category</label>
											<label><input type="checkbox" checked data-column="4">Url</label>
											<label><input type="checkbox" checked data-column="4">Action</label>
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-hover table-bordered"
									id="suning_table">
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>

				<div class="modal" id="view" tabindex="-1" data-width="760">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="product-page">
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="slider"></div>
									</div>
									<div class="col-md-6 col-sm-6">
										 <div class="price-availability-block clearfix">
											<a href="" id="copy_n" class="copy">复制</a><div class="name lead"></div>
										</div>
										<div class="price-availability-block clearfix">
											<div class="price">
												<strong></strong> <em><span></span></em>
											</div>

										</div>
										<div class="product-page-options">
										    
											<div class="pull-left">
											    
												<label class="control-label">Vendor:</label>
											</div>
											<span></span>
											<a href="" id="copy_b" class="copy">复制</a>
										</div>
										<div class="product-page-options">
											<div class="pull-left">
												<label class="control-label">PID:</label> <span></span>
											</div>
											<div class="pull-left">
												<label class="control-label">category:</label> <span></span>
											</div>

										</div>
										<div class="product-other-images">
                                            <button class="btn btn-primary" id="download_images">Download Images</button>
                                        </div>
									</div>

									<div class="product-page-content">
										<ul id="myTab" class="nav nav-tabs">
											<li class="active"><a href="#Description" data-toggle="tab">Description</a></li>
										</ul>
										<div id="myTabContent" class="tab-content">
											<div class="tab-pane fade in active " >
											    <a href="" id="copy_d" class="copy">复制</a>
											    <p class="hide" id="des_p"></p>
												<div class="table-scrollable">
													<table class="table table-bordered table-hover" id="Description">
														
													</table>
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
		</div>
		<!-- END CONTENT -->

	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<c:import url="/common/footer" />
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script src="../assets/global/plugins/jquery-1.11.0.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script
		src="../assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script src="../assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<script type="text/javascript"
		src="../assets/global/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="../assets/global/plugins/zclip/js/jquery.zclip.min.js"></script>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="../assets/global/plugins/select2/js/select2.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/datatables/media/js/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/bootstrap-modal/js/bootstrap-modal.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/global/scripts/metronic.js"
		type="text/javascript"></script>
	<script src="../assets/admin/layout/scripts/layout.js"
		type="text/javascript"></script>
	<script src="../assets/admin/layout/scripts/demo.js"
		type="text/javascript"></script>
	<script
		src="../assets/global/plugins/ion.rangeslider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script type="text/javascript" src="../static/js/yxMobileSlider.js"></script>
	<script src="../static/js/suning.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			Demo.init(); // init demo features
			Suning.init("<c:url value="/"/>");

		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>