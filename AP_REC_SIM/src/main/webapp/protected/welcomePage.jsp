<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div ng-app="aprsApp">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Akshay Patra - Recipe Simulator</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Welcome xxxx</a></li>
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">Help</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="container-fluid">

		<div class="row row-offcanvas row-offcanvas-left">

			<div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar"
				role="navigation">

				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">Dashboard</a></li>
					<li><a href="#">Master Setup</a></li>
					<li><a href="#">Recipe Setup</a></li>
					<li><a href="#">Ingredent Setup</a></li>
					<li><a href="#">School Setup</a></li>
					<li><a href="#">Meal Setup</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="">Reports</a></li>
					<li><a href="">Meal Planner</a></li>
					<li><a href="">Norms Status</a></li>
					<li><a href="">Recipe Simulator</a></li>

				</ul>


			</div>
			<!--/span-->

			<div class="col-sm-9 col-md-10 main">

				<!--toggle sidebar button-->
				<p class="visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">
						<i class="glyphicon glyphicon-chevron-left"></i>
					</button>
				</p>

				<h1 class="page-header">
					Dashboard
					<p class="lead">(with off-canvas sidebar)</p>
				</h1>

				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/6666ff/fff"
							class="center-block img-responsive img-circle"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/66ff66/fff"
							class="center-block img-responsive img-circle"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/6666ff/fff"
							class="center-block img-responsive img-circle"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/66ff66/fff"
							class="center-block img-responsive img-circle"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
				</div>

				<hr>
				<div style="display:inline-block; min-height:290px;" >
				        <datepicker ng-model="dt" min-date="minDate" show-weeks="true" class="well well-sm"></datepicker>
				    </div>
				<h2 class="sub-header">Section title</h2>
				<div class="table-responsive">
					<div class="row-fluid" ng-controller="contactsController">
						<h2>
							<p class="text-center">
								<spring:message code='contacts.header' />
								<a href="#searchContactsModal" id="contactsHeaderButton"
									role="button"
									ng-class="{'': displaySearchButton == true, 'none': displaySearchButton == false}"
									title="<spring:message code="search"/>&nbsp;<spring:message code="contact"/>"
									class="btn btn-inverse" data-toggle="modal"> <i
									class="icon-search"></i>
								</a>
							</p>
						</h2>
						<h4>
							<div ng-class="{'': state == 'list', 'none': state != 'list'}">
								<p class="text-center">
									<spring:message code="message.total.records.found" />
									:&nbsp;{{page.totalContacts}}
								</p>
							</div>
						</h4>

						<div>
							<div id="loadingModal" class="modal hide fade in centering"
								role="dialog" aria-labelledby="deleteContactsModalLabel"
								aria-hidden="true">
								<div id="divLoadingIcon" class="text-center">
									<div class="icon-align-center loading"></div>
								</div>
							</div>

							<div
								ng-class="{'alert badge-inverse': displaySearchMessage == true, 'none': displaySearchMessage == false}">
								<h4>
									<p class="messageToUser">
										<i class="icon-info-sign"></i>&nbsp;{{page.searchMessage}}
									</p>
								</h4>
								<a href="#" role="button" ng-click="resetSearch();"
									ng-class="{'': displaySearchMessage == true, 'none': displaySearchMessage == false}"
									title="<spring:message code='search.reset'/>"
									class="btn btn-inverse" data-toggle="modal"> <i
									class="icon-remove"></i> <spring:message code="search.reset" />
								</a>
							</div>

							<div
								ng-class="{'alert badge-inverse': displayMessageToUser == true, 'none': displayMessageToUser == false}">
								<h4 class="displayInLine">
									<p class="messageToUser displayInLine">
										<i class="icon-info-sign"></i>&nbsp;{{page.actionMessage}}
									</p>
								</h4>
							</div>

							<div
								ng-class="{'alert alert-block alert-error': state == 'error', 'none': state != 'error'}">
								<h4>
									<i class="icon-info-sign"></i>
									<spring:message code="error.generic.header" />
								</h4>
								<br />

								<p>
									<spring:message code="error.generic.text" />
								</p>
							</div>

							<div
								ng-class="{'alert alert-info': state == 'noresult', 'none': state != 'noresult'}">
								<h4>
									<i class="icon-info-sign"></i>
									<spring:message code="contacts.emptyData" />
								</h4>
								<br />

								<p>
									<spring:message code="contacts.emptyData.text" />
								</p>
							</div>

							<div id="gridContainer"
								ng-class="{'': state == 'list', 'none': state != 'list'}">
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th scope="col"><spring:message code="contacts.name" /></th>
											<th scope="col"><spring:message code="contacts.email" /></th>
											<th scope="col"><spring:message code="contacts.phone" /></th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<tr ng-repeat="contact in page.source">
											<td class="tdContactsCentered">{{contact.name}}</td>
											<td class="tdContactsCentered">{{contact.email}}</td>
											<td class="tdContactsCentered">{{contact.phoneNumber}}</td>
											<td class="width15">
												<div class="text-center">
													<input type="hidden" value="{{contact.id}}" /> <a
														href="#updateContactsModal"
														ng-click="selectedContact(contact);" role="button"
														title="<spring:message code="update"/>&nbsp;<spring:message code="contact"/>"
														class="btn btn-inverse" data-toggle="modal"> <i
														class="icon-pencil"></i>
													</a> <a href="#deleteContactsModal"
														ng-click="selectedContact(contact);" role="button"
														title="<spring:message code="delete"/>&nbsp;<spring:message code="contact"/>"
														class="btn btn-inverse" data-toggle="modal"> <i
														class="icon-minus"></i>
													</a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>

								<div class="text-center">
									<button href="#" class="btn btn-inverse"
										ng-class="{'btn-inverse': page.currentPage != 0, 'disabled': page.currentPage == 0}"
										ng-disabled="page.currentPage == 0" ng-click="changePage(0)"
										title='<spring:message code="pagination.first"/>'>
										<spring:message code="pagination.first" />
									</button>
									<button href="#" class="btn btn-inverse"
										ng-class="{'btn-inverse': page.currentPage != 0, 'disabled': page.currentPage == 0}"
										ng-disabled="page.currentPage == 0" class="btn btn-inverse"
										ng-click="changePage(page.currentPage - 1)"
										title='<spring:message code="pagination.back"/>'>&lt;</button>
									<span>{{page.currentPage + 1}} <spring:message
											code="pagination.of" /> {{page.pagesCount}}
									</span>
									<button href="#" class="btn btn-inverse"
										ng-class="{'btn-inverse': page.pagesCount - 1 != page.currentPage, 'disabled': page.pagesCount - 1 == page.currentPage}"
										ng-click="changePage(page.currentPage + 1)"
										ng-disabled="page.pagesCount - 1 == page.currentPage"
										title='<spring:message code="pagination.next"/>'>&gt;</button>
									<button href="#" class="btn btn-inverse"
										ng-class="{'btn-inverse': page.pagesCount - 1 != page.currentPage, 'disabled': page.pagesCount - 1 == page.currentPage}"
										ng-disabled="page.pagesCount - 1 == page.currentPage"
										ng-click="changePage(page.pagesCount - 1)"
										title='<spring:message code="pagination.last"/>'>
										<spring:message code="pagination.last" />
									</button>
								</div>
							</div>
							<div
								ng-class="{'text-center': displayCreateContactButton == true, 'none': displayCreateContactButton == false}">
								<br /> <a href="#addContactsModal" role="button"
									ng-click="openCreateDialog()"
									title="<spring:message code='create'/>&nbsp;<spring:message code='contact'/>"
									class="btn btn-primary" data-toggle="modal"> <i
									class="icon-plus"></i> &nbsp;&nbsp;<spring:message
										code="create" />&nbsp;<spring:message code="contact" />
								</a>
							</div>



						</div>
						<script type="text/ng-template" id="createContact.jsp">

   
        <div class="modal-header">
           <h3 id="addContactsModalLabel" class="displayInLine">
            <spring:message code="create"/>&nbsp;<spring:message code="contact"/>
        </h3>
        </div>
        <div class="modal-body">
            <form name="newContactForm" novalidate >
            <div class="pull-left">
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.name"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               autofocus
                               ng-model="contact.name"
                               name="name"
                               placeholder="<spring:message code='contact'/>&nbsp;<spring:message code='contacts.name'/>"/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.name.$error.required">
                                        <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.email"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.email"
                               name="email"
                               placeholder="<spring:message code='sample.email'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.email.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.phone"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.phoneNumber"
                               name="phoneNumber"
                               placeholder="<spring:message code='sample.phone'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.phoneNumber.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
               <!-- <input type="submit"
                       class="btn btn-inverse"
                       ng-click="createContact(newContactForm);"
                       value='<spring:message code="create"/>'/>
                <button class="btn btn-inverse"
                        data-dismiss="modal"
                        ng-click="exit('#addContactsModal');"
                        aria-hidden="true">
                    <spring:message code="cancel"/>
                </button>
			-->
 			<button class="btn btn-primary" ng-click="createContact(newContactForm);"><spring:message code="create"/></button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
            </div>
        </form>
        </div>
       <div class="modal-footer">
           <!-- <button class="btn btn-primary" ng-click="createContact(newContactForm);"><spring:message code="create"/></button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
-->
        </div>

   

</script>

					</div>

					<script src="../resources/js/pages/header.js" /></script>
					<script src="../resources/js/pages/contacts.js" /></script>

				</div>
				<!--/row-->
			</div>

			<%-- <jsp:include page="createContact.jsp" /> --%>
			<!-- <div ng-controller="ModalDemoCtrl">
				 <button class="btn btn-default" ng-click="open()">Open me!</button>
	    <button class="btn btn-default" ng-click="open('lg')">Large modal</button>
				<button class="btn btn-default" ng-click="open('sm')">Create
					Contact</button>
				<div ng-show="selected">Selection from a modal: {{ selected }}</div> 
			</div> -->

		</div>
		<!--/.container-->



	</div>