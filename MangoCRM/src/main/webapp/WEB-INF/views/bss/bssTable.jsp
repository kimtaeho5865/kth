<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gothic+A1:300&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="./images/common/favicon.png">
<link rel="stylesheet" type="text/css" href="resources/css/common/btn.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/Main.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/input.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/pop.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/layout.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="resources/script/jquery/jquery.slimscroll.js"></script>
<script type="text/javascript" src="resources/script/common/Main.js"></script>
<script type="text/javascript" src="resources/script/bss/bssTable.js"></script>
<style type="text/css">
.table_list_td{
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #cccccc;
}

.table_list_td:hover {
	background-color: #EEEEEE;
}

.table_list_td:hover input {
	background-color: #EEEEEE;
	outline: none;
	cursor: pointer;
}

.table_list_td:focus input {
	outline: none;
}

.input_normal {
	text-align: center;
	text-indent: 0px;
}

.input_normal {
	border: 0px;
}

.input_normal:focus {
	border: 0px;
}

.table_list_header {
	font-size: 10pt;
	cursor: text;
}

</style>
</head>
<body>
	<!-- 팝업 -->
	<!-- <div class="popup_bg"></div>
		<div class="popup popup_size_small popup_small_topleft">
			<div class="popup_title">
				<div class="popup_title_text">
					<img src="images/common/logo.png" alt="" class="pop_icon" /> 삭제
				</div>
				<div class="popup_close">
					<img src="images/common/icon_cancel_white.png" alt=""
						id="pop_close_btn" />
				</div>
			</div>
			<div class="popup_contents">정말 삭제하시겠습니까?</div>
			<div class="popup_btn_area">
				<div class="btn_yellow_btn_size_normal">확인</div>
				<div class="btn_yellow_btn_size_normal" style="margin-right: 10px">취소</div>
			</div>
		</div> -->
	<!-- 좌측메뉴 -->
	<c:import url="/topLeft">
		<c:param name="menuNo">20</c:param>
	</c:import>
	<div class="right_wrap">
	<form action="#" id="actionForm" method="post">
	<input type="hidden" name="page" id="page" value="1"/>
		<div class="title_area">영업 메인</div>
		<div class="content_area">
			<!-- 여기에 내용을 구현 -->
			<div class="contents_wrap">
				<div class="list_wrap">
					<div class="table_top_area" style="margin: 0px">
						<div class="top_title_area">
							<input type="text" class="input_normal" value="#개 항목중 #개 선택  "
							style="margin-left: 10px; text-align: left; font-weight: bold; color: #595959;"
								readonly="readonly" />
						</div>
						<div class="top_btn_area">
							<input type="date" class="input_short" placeholder="From" style="width: 150px;">
							<span style="font-size: 10pt; vertical-align: middle">~</span>
							<input type="date" class="input_short" placeholder="To" style="width: 150px;">
							<input type="text" class="input_short" placeholder="영업기회명" style="margin-left: 10px; width: 200px;"/>
							<select class="input_short" style="margin-left: 10px;">
								<option class="input_short">전체</option>
								<option>진행중</option>
								<option>보류</option>
								<option>성공</option>
								<option>실패</option>
							</select>
							<div class="btn_black btn_size_normal">검색</div>
						</div>
					</div>
					<table class="table_normal" id="bssTable" style="border-top: 0px;">
						<colgroup>
							<!-- <col width="30px" /> -->
							<col width="50px" />
							<col width="200px" />
							<col width="180px" />
							<col width="120px" />
							<col width="100px" />
							<col width="100px" />
							<col width="130px" />
							<col width="100px" />
							<col width="110px" />
							<col width="110px" />
						</colgroup>
						<thead>
							<tr class="table_list_td">
								<th class="table_list_header">no</th>
								<th class="table_list_header">영업기회명</th>
								<th class="table_list_header">고객사</th>
								<th class="table_list_header">고객</th>
								<th class="table_list_header">시작일</th>
								<th class="table_list_header">종료일</th>
								<th class="table_list_header">예상매출</th>
								<th class="table_list_header">상태</th>
								<th class="table_list_header">부서</th>
								<th class="table_list_header">담당자</th>
							</tr>
						</thead>
						<tbody>
							<tr class="list_contents" style="height: 500px;">
							<td colspan="10" style="font-size: 10pt;">조회된 데이터가 없습니다.</td>
							</tr>
						</tbody>
					</table>
						<div class="list_paging_area" style="text-align: left;">
							<span class="content_bottom_1_span" id="bssTablePaging">
								<!-- <input type="button" class="bottom_btn_1" value="＜＜" />
								<input type="button" class="bottom_btn_1" value="＜" />
								<input type="button" class="bottom_btn_2" value="1" />
								<input type="button" class="bottom_btn_2" value="2" />
								<input type="button" class="bottom_btn_2" value="3" />
								<input type="button" class="bottom_btn_2" value="4" />
								<input type="button" class="bottom_btn_1" value="＞" />
								<input type="button" class="bottom_btn_1" value="＞＞" /> -->
							</span>
						</div>
					<div class="content_bottom">
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
</body>
</html>