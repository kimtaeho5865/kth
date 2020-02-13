<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리드</title>
<style type="text/css">
table {
	width: 1200px;
	text-align: center;
	border-collapse: collapse;
	font-size: 10pt;
}

.card_view_top {
	height: 100px;
	width: 1200px;
}

.srch_table_view {
	display: inline-block;
	width: 30px;
	height: 30px;
	vertical-align: top;
}

.srch_table_view>img {
	width: 100%;
	height: 100%;
}

.srch_card_view {
	display: inline-block;
	width: 30px;
	height: 30px;
	vertical-align: top;
}

.srch_card_view>img {
	width: 100%;
	height: 100%;
}
/* 리드 카드보기 가운데부분  */
.card_view_title {
	width: 1200px;
	height: 700px;
	text-align: center;
	margin: 10px 0;
}

/* Unqualified, New, Working, Nurturing, Conversion 단계별 */
.card_view_title_stat {
	display: inline-block;
	width: calc(20% - 15px);
	height: 100%;
	vertical-align: top;
	text-align: center;
}

/*  */
.card_view_stat {
	display: inline-block;
	width: 180px;
	height: 40px;
	border-radius: 3px;
	background-color: #F2CB07;
	border: 0px solid #c5960a;
	color: #595959;
	font-size: 10pt;
	font-weight: bold;
	line-height: 40px;
	vertical-align: middle;
}

/* 카드 내부 */
.card {
	display: inline-block;
	width: 180px;
	height: 100px;
	background-color: #FFFFFF;
	border: 1px solid #d0d0d0;
	border-radius: 3px;
	margin-top: 10px;
	text-align: left;
	padding: 5pt 3pt;
}

.card:hover {
	box-shadow: 1px 1px 8px #c8c8c8;
	cursor: pointer;
}

/* 카드 내부 리드 이름 */
.card_name {
	display: inline-block;
	width: calc(100% - 30px);
	height: auto;
	color: #F2B807;
	padding-left: 5px;
	font-size: 12pt;
	font-weight: bold;
	vertical-align: top;
}

/* 카드 버튼 div*/
.card_btn {
	display: inline-block;
	width: 16px;
	height: 16px;
	text-align: right;
	vertical-align: top;
	border: 0px solid #000000;
	border-radius: 3px;
	background-color: #F2B807;
	margin-top: 2px;
}

.card_btn:hover {
	background-color: #F2CB07;
	cursor: pointer;
}

/* 회사명, 전화번호 */
.card_comp, .card_emp, .card_prod {
	font-size: 10pt;
	text-indent: 5pt;
	margin-top: 3px;
}

/* 수직 구분선 */
.vertical_line {
	display: inline-block;
	width: 1px;
	height: 100%;
	background-color: #d0d0d0;
	border: 0px solid #000000;
	border-radius: 1px;
	margin-top: 40px;
}
/* 수평  컬러 구분선 */
.div_line_yellow {
	display: inline-block;
	width: 1200px;
	height: 2px;
	background-color: #F2CB07;
	border: 0px solid #000000;
	margin-bottom: 2px;
}
/* 수평 구분선 */
.div_line {
	height: 2px;
}

/* -----------테이블 영역------------ */
.table_list_td {
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
	border: 0px !important;
}

.input_normal:focus {
	border: 0px;
}

.table_list_header {
	font-size: 10pt;
	cursor: text;
}
</style>
<c:import url="/header"></c:import>
<script type="text/javascript">
	$(document).ready(function() {
		reloadList();
		$(".content_srch").hide();
		$("#card_area").hide();
		$(".table_img_size").on("click", function() {
			$("#bssTableArea").show();
			//간판보기
			
			$(".content_srch").hide();
			$("#card_area").hide();
		});
		$(".grid_img_size").on("click", function() {
			$("#bssTableArea").hide();
			//카드 형식 보기 
			$(".content_srch").show();
			$("#card_area").show();
			// 		bssCardList();
		});
		
		$("#searchBtn").on("click", function(){
			reloadList();
		});
	});
	
	function reloadList() {
		var params = $("#srchForm").serialize() + "&" + $("#actionForm").serialize();
		$.ajax({
			type : "post",
			url : "bssMainAjax",
			dataType : "json",
			data : params,

			success : function(result) {
				bssCardList(result.list);
			},
			error : function(request, status, error) {
				console.log("text : " + request.responseText);
				console.log("error : " + error);
			}
		});
	}
	
	function bssCardList(list){
		var html = "";
		
		html += "<div class=\"vertical_line\"></div>";
		html += "<div class=\"card_view_title_stat\" id=\"0\">";
		html += "	<div class=\"card_view_stat\">리드</div>";
		html += "</div>";
		html += "<div class=\"vertical_line\"></div>";
		html += "<div class=\"card_view_title_stat\" id=\"1\">";
		html += "	<div class=\"card_view_stat\">영업기회</div>";
		html += "</div>";
		html += "<div class=\"vertical_line\"></div>";
		html += "<div class=\"card_view_title_stat\" id=\"2\">";
		html += "	<div class=\"card_view_stat\">영업제안</div>";
		html += "</div>";
		html += "<div class=\"vertical_line\"></div>";
		html += "<div class=\"card_view_title_stat\" id=\"3\">";
		html += "	<div class=\"card_view_stat\">영업협상</div>";
		html += "</div>";
		html += "<div class=\"vertical_line\"></div>";
		html += "<div class=\"card_view_title_stat\" id=\"4\">";
		html += "	<div class=\"card_view_stat\">영업계약</div>";
		html += "</div>";
		html += "<div class=\"vertical_line\"></div>";

		$(".card_view_title").html(html);
		
		
		for(var i in list){
			
			html = "";
			html += "<div class=\"card\">";
			html += "<div class=\"card_area\" id=\"" + list[i].LEAD_NO + "\">";
			html += "	<div class=\"card_name_title\">";
			html += "		<div class=\"card_name\">" + list[i].CHN_NAME + "</div>";
			html += "	</div>";
			html += "	<div class=\"card_comp\">" + list[i].COMP_NAME + "</div>";
			html += "	<div class=\"card_emp\">" + list[i].EMP_NAME + "</div>";
			html += "	<div class=\"card_prod\">" + list[i].PROD_NAME + "</div>";
			html += "</div>";
			html += "</div>";
			
			$("#" + list[i].PROG_NO).append(html);
		}
	}
</script>
</head>
<body>
	<c:import url="/topLeft">
		<c:param name="menuNo">20</c:param>
	</c:import>
	<div class="title_area">영업</div>
	<div class="content_area">
		<div class="list_wrap">
			<!-- 검색영역 -->
			<form action="#" id="srchForm" method="post">
				<div class="content_top" style="text-align: right">
					<!-- 상단 테이블이미지, 간판이미지 -->
					<div class="view_area">
						<img class="table_img_size" src="resources/images/Lead/table.png" />
						<img class="grid_img_size" src="resources/images/Lead/grid.png" />
					</div>
				</div>


				<!-- 카드영역시작 -->
				<!-- 검색영역 -->
				<div class="content_srch">
					<div id="searchBtn" class="content_srch_btn">
						<div>검색</div>
						<input type="text" name="searchTxt" class="content_srch_txt" /> <select
							name="searchGbn2" class="content_srch_DD">
							<!-- 검색드랍다운리스트 -->
							<option class="content_srch_DD1"></option>
							<option selected="selected" value="0">선택없음</option>
							<option value="1">기회명</option>
							<option value="2">기업명</option>
							<option value="3">담당자</option>
							<option value="4">상품명</option>
						</select>
					</div>
				</div>
			</form>
			<form action="#" id="actionForm" method="post"></form>
			<div id="card_area">
				<div class="div_line_yellow"></div>
				<div class="card_view_title">
					<%-- <!-- 수직 구분선 -->
					<div class="vertical_line"></div>
					<!-- 진행도 영역 시작 -->
					<div class="card_view_title_stat" id="lead">
						<div class="card_view_stat">리드</div>
						<!-- 리드 카드 형식  -->
						<!-- 리드 카드 형식 끝  -->
					</div>
					<!-- 진행도 영역 끝 -->
					<div class="vertical_line"></div>
					<!-- 기회 단계 -->
					<div class="card_view_title_stat" id="Chn">
						<div class="card_view_stat">영업기회</div>

					</div>
					<div class="vertical_line"></div>
					<!-- 제안 단계 -->
					<div class="card_view_title_stat" id="Sgt">
						<div class="card_view_stat">영업제안</div>

					</div>
					<div class="vertical_line"></div>
					<!-- 협상 단계 -->
					<div class="card_view_title_stat" id="Ngt">
						<div class="card_view_stat">영업협상</div>

					</div>
					<div class="vertical_line"></div>
					<!-- 계약 단계 -->
					<div class="card_view_title_stat" id="Ctract">
						<div class="card_view_stat">영업계약</div>
					</div>
					<div class="vertical_line"></div> --%>
				</div>
			</div>
			<!-- 카드영역끝 -->

			<!----------- 표 영역 시작 ---------->
			<div class="list_wrap" id="bssTableArea">
				<div class="table_top_area" style="margin: 0px">
					<div class="top_title_area">
						<input type="text" class="input_normal" value="#개 항목중 #개 선택  "
							style="margin-left: 10px; text-align: left; font-weight: bold; color: #595959;"
							readonly="readonly" />
					</div>
					<div class="top_btn_area">
						<input type="date" class="input_short" placeholder="From"
							style="width: 150px;"> <span
							style="font-size: 10pt; vertical-align: middle">~</span> <input
							type="date" class="input_short" placeholder="To"
							style="width: 150px;"> <input type="text"
							class="input_short" placeholder="영업기회명"
							style="margin-left: 10px; width: 200px;" /> <select
							class="input_short" style="margin-left: 10px;">
							<option class="input_short">전체</option>
							<option>진행중</option>
							<option>보류</option>
							<option>성공</option>
							<option>실패</option>
						</select>
						<div class="btn_black btn_size_normal">검색</div>
					</div>
				</div>
				<table class="table_normal" style="border-top: 0px;">
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
					<tr class="">
						<!-- <th class="table_list_header"><input type="checkbox" /></th> -->
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
					<tr class="table_list_td">
						<!-- <td><input type="checkbox" /></td> -->
						<td><input class="input_normal" type="text"
							readonly="readonly" value="1" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="5g" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="구디아카데미" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="주재희" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="2020-01-10" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="2020-01-20" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="100,000" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="성공" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="담당부서" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" value="조형준" /></td>
					</tr>
					<tr class="table_list_td">
						<td>2</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>3</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>4</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>5</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>6</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>7</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>8</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>9</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
					<tr class="table_list_td">
						<td>10</td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
						<td><input class="input_normal" type="text"
							readonly="readonly" /></td>
					</tr>
				</table>
				<div class="list_paging_area" style="text-align: left;">
					<span class="content_bottom_1_span"> <input type="button"
						class="bottom_btn_1" value="＜＜" /> <input type="button"
						class="bottom_btn_1" value="＜" /> <input type="button"
						class="bottom_btn_2" value="1" /> <input type="button"
						class="bottom_btn_2" value="2" /> <input type="button"
						class="bottom_btn_2" value="3" /> <input type="button"
						class="bottom_btn_2" value="4" /> <input type="button"
						class="bottom_btn_1" value="＞" /> <input type="button"
						class="bottom_btn_1" value="＞＞" />
					</span>
				</div>
				<div class="content_bottom"></div>
			</div>
			<!----------- 표 영역 끝 ---------->
		</div>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>