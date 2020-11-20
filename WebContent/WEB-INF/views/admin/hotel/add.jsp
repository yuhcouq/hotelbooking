<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<div class="data-table-area mg-b-15">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="sparkline13-list">
					<div class="sparkline13-graph">
						<div class="row">
							<h3 style="margin-left: 20px;">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
								<span><strong>Thêm mới khách sạn</strong></span>
							</h3>
						</div>
						<div class="row" style="margin: 50px 20px;">
							<form
								action="${pageContext.request.contextPath }/admin/hotel/add"
								method="Post" style="margin-left: 10px;"
								enctype="multipart/form-data">
								<div class="form-group-inner">
									<label>Tên khách sạn <span style="color: red;">*</span></label>
									<input type="text" name="hotel_name" class="form-control"
										placeholder="Vui lòng nhập tên khách sạn"
										style="border-radius: 5px;" required />
								</div>
								<div class="form-group-inner">
									<label>Địa chỉ <span style="color: red;">*</span></label> <input
										type="text" name="address" class="form-control"
										placeholder="Vui lòng nhập địa chỉ"
										style="border-radius: 5px;" required />
								</div>
								<div class="form-group-inner">
									<label>Thành phố <span style="color: red;">*</span></label>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="chosen-select-single mg-b-20">
											<select data-placeholder="Choose a City..." name="city_id"
												class="form-control"
												style="border-radius: 5px; width: 700px;">
												<c:forEach items="${listCities}" var="city">
													<option value="${city.id_city }">${city.city_name }</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group-inner">
									<label>Hình ảnh <span style="color: red;">*</span></label> <input
										type="file" name="picture" class="form-control"
										placeholder="Vui lòng chọn hình ảnh"
										style="border-radius: 5px;" required />
								</div>
								<div class="form-group-inner">
									<label>Mô tả <span style="color: red;">*</span></label>
									<textarea name="description" class="form-control" rows="3"
										style="border-radius: 5px; width: 700px; margin-left: 15px;"
										required></textarea>
								</div>
								<div class="form-group-inner">
									<label>Chi tiết <span style="color: red;">*</span></label>
									<textarea name="detail" class="form-control" rows="3"
										style="border-radius: 5px; width: 700px; height: 195px; margin-left: 15px;"
										required></textarea>
								</div>
								<div class="">
									<input type="reset" value="Clear" class="button-clear"
										style="margin-left: 42.6%;" /> <input type="submit"
										value="Thêm mới" class="button-success" />
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>