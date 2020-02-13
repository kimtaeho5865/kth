<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영업상세보기</title>
<c:import url="/header"></c:import>
<style type="text/css">
/* 의견 파트 */
.opin_contents {
	margin-bottom: 5px;
}

.opin_add_data {
	color: #a0a0a0;
}

/* 활동 일정 파트 */
/* 활동 row - tr */
.activity_row {
	height: 139px;
	border-bottom: 0;
}
/* 활동 일정 왼쪽 cell */
.activity_left {
	text-align: center;
	vertical-align: middle;
	border-right: 1px solid #cacaca;
}
/* 활동 일정 오른쪽 cell */
.activity_right {
	height: 139px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 25px;
}

.activity_result {
	height: 139px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
}
/* 활동 구분 아이콘 영역 */
.activity_cg_icon {
	display: inline-block;
	width: 35px;
	height: 35px;
	border-radius: 3px;
	background-color: #f2b807;
	text-align: center;
	vertical-align: middle;
	position: relative;
	top: -30px;
	left: 43px;
}
/* 활동 구분 아이콘 이미지 */
.activity_cg_icon>img {
	margin-top: 7px;
}
/* 활동 일정 말풍선 배경 */
.activity_bg {
	position: relative;
	border: 1px solid #cacaca;
	background: #ffffff;
	margin-left: 10px;
	height: 100%;
	font-size: 0;
	padding: 10px 15px;
	cursor: pointer;
}

.activity_bg:before {
	content: '';
	position: absolute;
	left: 0;
	top: 25%;
	width: 0;
	height: 0;
	border-left: 11px solid transparent;
	border-right: 11px solid #cacaca;
	border-top: 11px solid transparent;
	border-bottom: 11px solid transparent;
	margin-top: -11px;
	margin-left: -22px;
}

.activity_bg:after {
	content: '';
	position: absolute;
	left: 0;
	top: 25%;
	width: 0;
	height: 0;
	border-left: 11px solid transparent;
	border-right: 11px solid #ffffff;
	border-top: 11px solid transparent;
	border-bottom: 11px solid transparent;
	margin-top: -11px;
	margin-left: -21px;
}
/* 활동 분류 */
.activity_cg {
	display: inline-block;
	width: 50%;
	font-size: 12pt;
	font-weight: 700;
	text-indent: 10px;
	text-align: left;
}
/* 활동 등록시간 */
.activity_uploadtime {
	display: inline-block;
	width: 50%;
	font-size: 12pt;
	font-weight: 700;
	text-align: right;
}
/* 활동 내용 */
.activity_contents {
	margin-top: 8px;
	font-size: 10pt;
	font-weight: 300;
	text-indent: 30px;
	text-align: left;
}
/* 날짜 정렬 */
.activity_arrow {
	cursor: pointer;
}

/* 활동 일정 내용 오른쪽 영역 */
.activity_bg_right {
	border: 1px solid #cacaca;
	height: 100%;
	font-size: 0;
	padding: 10px 15px;
	cursor: pointer;
}
/*영업팀 css 추가사항*/
.btn_left_input {
	width: calc(100% - 94px);
}
/*윤제추가*/
.bss_category {
	height: 50px;
	box-shadow: 0px 0px 5px #ccc;
	font-size: 0px;
	vertical-align: middle;
	text-indent: 10px;
}

.category_content {
	line-height: 50px;
	display: inline-block;
	font-size: 15pt;
	font-weight: bold;
}

.category_img_area {
	height: 0px;
	display: inline-block;
	float: right;
	padding: 15.5px;
}
/**** 추가 css */
/* border : 0*/
.input_border_0 {
	width: 100%;
	height: 30px;
	border: 0;
	font-size: 10pt;
	text-indent: 5px;
}

.input_border_0:focus {
	border: 0;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		reloadList();
		
		$('button').each(function() {
			if ($(this).html().length > 2) {
				var leng_diff = $(this).html().length - 2;
				$(this).width($(this).width() + (10 * leng_diff) + "px");
			}
		});
		$('.content_btn>div').each(function() {
			if ($(this).html().length > 2) {
				var leng_diff = $(this).html().length - 2;
				$(this).width($(this).width() + (10 * leng_diff) + "px");
			}
		});
	});
</script>
</head>
<body>
	<c:import url="/topLeft">
		<c:param name="menuNo"></c:param>
	</c:import>
	<div class="title_area">영업상세보기</div>
	<div class="content_area">
		<div class="contents_wrap">
			<div class="table_top_area">
				<div class="top_title_area"></div>
				<div class="top_btn_area">
					<div class="btn_yellow btn_size_normal add">수정</div>
					<div class="btn_yellow btn_size_normal cancel">취소</div>
				</div>
			</div>
			<div class="bss_category">
				<div class="category_content">기회</div>
				<div class="category_img_area">
					<img class="sample_img" alt="열닫"
						src="resources/images/bss/close_tab.png" width="21px"
						height="21px" />
				</div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="10%" />
					<col width="40%" />
					<col width="10%" />
					<col width="40%" />
				</colgroup>
				<tbody>
					<tr>
						<td class="field_name first_field_name">진행상태 <span
							class="acc_txt"></span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name">영업기회명 <span class="acc_txt"> *</span></td>
						<td class="field_contents"><input type="text"
							class="input_normal" placeholder="50자 이내로 작성부탁드립니다." /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">영업시작<span
							class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_short btn_left_input" readonly="readonly" />
							<div class="btn_black btn_size_normal select">시작</div></td>
						<td class="field_name">사업유형 <span class="acc_txt"> *</span></td>
						<td class="field_contents"><select class="input_normal">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">예상매출 <span
							class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_normal" /></td>
						<td class="field_name">매출구분 <span class="acc_txt"> *</span></td>
						<td class="field_contents"><select class="input_normal">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">담당자<span
							class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_short btn_left_input" readonly="readonly" />
							<div class="btn_black btn_size_normal select">수정</div></td>
						<td class="field_name">사업유형 <span class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">담당팀 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name">당당P.H <span class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">기업명 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name">기업P.H <span class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">고객명 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name">고객P.H <span class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">팩스 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name">이메일 <span class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">상품<span
							class="acc_txt"> *</span>
						</td>
						<td colspan="3" class="field_contents"><select
							class="input_normal btn_left_input">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select>
							<div class="btn_black btn_size_normal select">등록</div></td>
					</tr>
				</tbody>
			</table>
			<div class="bss_category">
				<div class="category_content">제안</div>
				<div class="category_img_area">
					<img class="sample_img" alt="열닫"
						src="resources/images/bss/close_tab.png" width="21px"
						height="21px" />
				</div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="10%" />
					<col width="40%" />
					<col width="10%" />
					<col width="40%" />
				</colgroup>
				<tbody>
					<tr>
						<td class="field_name first_field_name">제안시작일 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name ">제안마감일<span class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_short btn_left_input" readonly="readonly" />
							<div class="btn_black btn_size_normal select">마감</div></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">첨부파일 <span
							class="acc_txt"></span></td>
						<td colspan="3" class="field_contents"><select
							class="input_normal btn_left_input">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select>
							<div class="btn_black btn_size_normal select">등록</div></td>
					</tr>
				</tbody>
			</table>
			<div class="bss_category">
				<div class="category_content">협상</div>
				<div class="category_img_area">
					<img class="sample_img" alt="열닫"
						src="resources/images/bss/close_tab.png" width="21px"
						height="21px" />
				</div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="10%" />
					<col width="40%" />
					<col width="10%" />
					<col width="40%" />
				</colgroup>
				<tbody>
					<tr>
						<td class="field_name first_field_name">협상시작일 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name ">협상마감일<span class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_short btn_left_input" readonly="readonly" />
							<div class="btn_black btn_size_normal select">마감</div></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">첨부파일 <span
							class="acc_txt"></span></td>
						<td colspan="3" class="field_contents"><select
							class="input_normal btn_left_input">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select>
							<div class="btn_black btn_size_normal select">등록</div></td>
					</tr>
				</tbody>
			</table>
			<div class="bss_category">
				<div class="category_content">계약</div>
				<div class="category_img_area">
					<img class="sample_img" alt="열닫"
						src="resources/images/bss/close_tab.png" width="21px"
						height="21px" />
				</div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="10%" />
					<col width="40%" />
					<col width="10%" />
					<col width="40%" />
				</colgroup>
				<tbody>
					<tr>
						<td class="field_name first_field_name">계약일 <span
							class="acc_txt"></span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
						<td class="field_name ">입금상태<span class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><select
							class="input_normal btn_left_input">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select>
							<div class="btn_black btn_size_normal select">마감</div></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">예금주명<span
							class="acc_txt"> *</span>
						</td>
						<td class="field_contents"><input type="text"
							class="input_short btn_left_input" readonly="readonly" />
							<div class="btn_black btn_size_normal select">시작</div></td>
						<td class="field_name">사업유형 <span class="acc_txt"> *</span></td>
						<td class="field_contents"><input type="text"
							class="input_border_0" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field_name first_field_name">첨부파일 <span
							class="acc_txt"></span></td>
						<td colspan="3" class="field_contents"><select
							class="input_normal btn_left_input">
								<option selected="selected"></option>
								<option></option>
								<option></option>
								<option></option>
						</select>
							<div class="btn_black btn_size_normal select">등록</div></td>
					</tr>
				</tbody>
			</table>
			<div class="blank_space"></div>

			<!-- 의견 테이블 -->
			<div class="table_top_area">
				<div class="top_title_area">의견</div>
				<div class="top_btn_area"></div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="90%" />
					<col width="10%" />
				</colgroup>
				<tr>
					<td class="field_contents">
						<div class="opin_contents">의견을 올리는 곳입니다.</div>
						<div class="opin_add_data">홍길동 대리 | 2019-09-30 18:00:00</div>
					</td>
					<td class="field_contents">
						<div class="contents_align_center">
							<div class="btn_red btn_size_sqr">
								<img src="images/button/icon_del_white.png" alt="" width="10px" />
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="field_contents">
						<div class="opin_contents">의견을 올리는 곳입니다.</div>
						<div class="opin_add_data">홍길동 대리 | 2019-09-30 18:00:00</div>
					</td>
					<td class="field_contents">
						<div class="contents_align_center">
							<div class="btn_red btn_size_sqr">
								<img src="images/button/icon_del_white.png" alt="" width="10px" />
							</div>
						</div>
					</td>
				</tr>
				<tr class="tr_no_uline">
					<td class="field_contents"><textarea class="textarea_noresize"></textarea>
					</td>
					<td class="field_contents">
						<div class="btn_black btn_size_wfull">작성</div>
					</td>
				</tr>
			</table>
			<div class="blank_space"></div>

			<!-- 활동 일정 -->
			<div class="table_top_area">
				<div class="top_title_area">
					활동 일정&nbsp;&nbsp;<img src="images/button/icon_align_yellow.png"
						class="activity_arrow" alt="" />
				</div>
				<div class="top_btn_area">
					<select class="input_short">
						<option selected="selected">전체</option>
						<option>전화</option>
						<option>상담</option>
						<option>방문</option>
						<option>이메일</option>
					</select>
					<div class="btn btn_yellow btn_size_normal">등록</div>
				</div>
			</div>
			<table class="table_normal">
				<colgroup>
					<col width="8%" />
					<col width="46%" />
					<col width="46%" />
				</colgroup>
				<tr class="activity_row">
					<td class="activity_left">
						<div class="activity_cg_icon">
							<img src="images/activity/call_icon.png" alt="" />
						</div>
					</td>
					<td class="activity_right">
						<div class="activity_bg">
							<div>
								<div class="activity_cg">전화</div>
								<div class="activity_uploadtime">2019.10.01</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">자사 이벤트 소개 및 다음 방문 일정 조율</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
					<td class="activity_result">
						<div class="activity_bg_right">
							<div>
								<div class="activity_cg">결과</div>
								<div class="activity_uploadtime">2019.10.10</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">긍정적 반응</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
				</tr>
				<tr class="activity_row">
					<td class="activity_left">
						<div class="activity_cg_icon">
							<img src="images/activity/headphone_icon.png" alt="" />
						</div>
					</td>
					<td class="activity_right">
						<div class="activity_bg">
							<div>
								<div class="activity_cg">상담</div>
								<div class="activity_uploadtime">2019.10.01</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">자사 이벤트 소개 및 다음 방문 일정 조율</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
					<td class="activity_result">
						<div class="activity_bg_right">
							<div>
								<div class="activity_cg">결과</div>
								<div class="activity_uploadtime">2019.10.10</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">긍정적 반응</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
				</tr>
				<tr class="activity_row">
					<td class="activity_left">
						<div class="activity_cg_icon">
							<img src="images/activity/visit_icon.png" alt="" />
						</div>
					</td>
					<td class="activity_right" colspan="2">
						<div class="activity_bg">
							<div>
								<div class="activity_cg">방문</div>
								<div class="activity_uploadtime">2019.10.01</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">자사 이벤트 소개 및 다음 방문 일정 조율</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
				</tr>
				<tr class="activity_row">
					<td class="activity_left">
						<div class="activity_cg_icon">
							<img src="images/activity/email_icon.png" alt="" />
						</div>
					</td>
					<td class="activity_right" colspan="2">
						<div class="activity_bg">
							<div>
								<div class="activity_cg">이메일</div>
								<div class="activity_uploadtime">2019.10.01</div>
							</div>
							<div class="activity_contents">테스터 | 부장</div>
							<div class="activity_contents">자사 이벤트 소개 및 다음 방문 일정 조율</div>
							<div class="activity_contents">홍길동 대리 담당</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>