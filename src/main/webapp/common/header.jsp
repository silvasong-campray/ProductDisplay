<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="page-header-inner">		
		<!-- BEGIN LOGO -->
		<div class="page-logo">
	    <a href="">
	    <img src="../assets/admin/layout/img/logo-big.png" alt=""/>
	    </a>
       </div>
		<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
			</a>          
			<!-- END RESPONSIVE MENU TOGGLER -->            
			<!-- BEGIN TOP NAVIGATION MENU -->              
        <div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!-- END INBOX DROPDOWN -->
				<!-- BEGIN LANGUAGE BAR -->
				<%-- <li class="dropdown dropdown-language">
					<a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="<s:message code="locale.flag.img"/>">
					<span class="langname"><s:message code="locale.langname"/></span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
					    <li>
							<a href="<c:url value="/"/>settings/locale?locale=en_US">
							<img alt="" src="../assets/global/img/flags/us.png"> US </a>
						</li>
						<li>
							<a href="<c:url value="/"/>settings/locale?locale=zh_CN">
							<img alt="" src="../assets/global/img/flags/cn.png"> Chinese </a>
						</li>						
					</ul>
				</li> --%>
				<!-- END LANGUAGE BAR -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				 <li class="dropdown dropdown-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<span class="username username-hide-on-mobile">
					admin </span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="<c:url value="/"/>logout">
							<i class="icon-key"></i> Log Out </a>
						</li>
					</ul>
				</li> 
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU --> 
		</div>
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
