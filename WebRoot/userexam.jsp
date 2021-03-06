<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>

<br>

<div class="am-g am-g-fixed blog-g-fixed">
	<div class="am-cf admin-main">
		<div class="am-u-md-3 blog-sidebar">
			<%@ include file="usersidebar.jsp"%>
		</div>

		<div class="am-u-md-9">
			<!-- content start -->
			<div class="admin-content">

				<div class="am-g">
					<div class="am-u-md-12">
						<div class="am-panel am-panel-default">
							<div class="am-panel-hd am-cf"
								data-am-collapse="{target: '#collapse-panel-2'}">
								考试中心<span class="am-icon-chevron-down am-fr"></span>
								<a href="UserExamStartServlet" class="am-btn am-btn-success"
															role="button"> 开始考试</a>
								<a href="UserExamWrongServlet" class="am-btn am-btn-success"
															role="button"> 我的错题集</a>
							</div>
							<div class="am-panel-bd">
							
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<table
										class="am-table am-table-bd am-table-striped admin-content-table">
										<thead>
											<tr>
												<th>试题题目</th>
												<th>创建时间</th>
											</tr>
										</thead>
										<tbody>
										
											<%
											    List<Exam> examList = (List<Exam>) request.getAttribute("Examlist");
											    if (null == examList) {
											        System.out.println("Examlist为什么会是空的呢？");
											    } else {%>
													<% int i = 1;%>
											        <%for (Exam jc : examList) { %>
														<tr>
															<td><a href="SchoolExamDetailServlet?testid=<%=jc.getTestid() %>"><%=jc.getTestname() %></a></td>
															<td><%=jc.getCreated() %></td>
														</tr>
													<%} %>
													
											<%
											    }
											%>
										</tbody>
									</table>
									</div>
									</div>
								</div>
							</div>
				</div>

			</div>
		</div>

	</div>
	<!-- content end -->
</div>
<%@ include file="foot.jsp"%>