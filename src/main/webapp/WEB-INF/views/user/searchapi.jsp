<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/mapmarker.css" rel="stylesheet">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/style/default.css">
<style>
body {
	background-color: #ffffff;
}

#chartdiv {
	width: 100%;
	height: 500px;
	background-color: #161616;
}

.amcharts-graph-g2 .amcharts-graph-stroke {
	stroke-dasharray: 3px 3px;
	stroke-linejoin: round;
	stroke-linecap: round;
	-webkit-animation: am-moving-dashes 1s linear infinite;
	animation: am-moving-dashes 1s linear infinite;
}

@
-webkit-keyframes am-moving-dashes { 100% {
	stroke-dashoffset: -31px;
}

}
@
keyframes am-moving-dashes { 100% {
	stroke-dashoffset: -31px;
}

}
.lastBullet {
	-webkit-animation: am-pulsating 1s ease-out infinite;
	animation: am-pulsating 1s ease-out infinite;
}

@
-webkit-keyframes am-pulsating { 0% {
	stroke-opacity: 1;
	stroke-width: 0px;
}

100%
{
stroke-opacity
:
 
0;
stroke-width
:
 
50
px
;

  
}
}
@
keyframes am-pulsating { 0% {
	stroke-opacity: 1;
	stroke-width: 0px;
}

100%
{
stroke-opacity
:
 
0;
stroke-width
:
 
50
px
;

  
}
}
.amcharts-graph-column-front {
	-webkit-transition: all .3s .3s ease-out;
	transition: all .3s .3s ease-out;
}

.amcharts-graph-column-front:hover {
	fill: #496375;
	stroke: #496375;
	-webkit-transition: all .3s ease-out;
	transition: all .3s ease-out;
}

.amcharts-graph-g3 {
	stroke-linejoin: round;
	stroke-linecap: round;
	stroke-dasharray: 500%;
	stroke-dasharray: 0 \0/; /* fixes IE prob */
	stroke-dashoffset: 0 \0/; /* fixes IE prob */
	-webkit-animation: am-draw 40s;
	animation: am-draw 40s;
}

@
-webkit-keyframes am-draw { 0% {
	stroke-dashoffset: 500%;
}

100%
{
stroke-dashoffset
:
 
0%;
}
}
@
keyframes am-draw { 0% {
	stroke-dashoffset: 500%;
}
100%
{
stroke-dashoffset
:
 
0%;
}
}
</style>
    <script src="https://www.amcharts.com/lib/3/amcharts.js?x"></script>
<script src="https://www.amcharts.com/lib/3/serial.js?x"></script>
<script src="https://www.amcharts.com/lib/3/themes/dark.js"></script>
<script>
    var chartData = [
    {
        "date": "2012-01-01",
        "인구수": 379,
        "townName": "선호도",
        "townName2": "선호도",
        "townSize": 25,
        "latitude": 12.37,
        "선호도": 408
    },
    {
        "date": "2012-01-02",
        "인구수": 753,
        "townName": "Washington",
        "townSize": 14,
        "latitude": 84.82,
        "선호도": 482
    },
    {
        "date": "2012-01-03",
        "인구수": 2644,
        "townName": "Wilmington",
        "townSize": 6,
        "latitude": 92.78,
        "선호도": 562
    },
    {
        "date": "2012-01-04",
        "인구수": 1065,
        "townName": "Jacksonville",
        "townSize": 7,
        "latitude": 78.35,
        "선호도": 379
    },
    {
        "date": "2012-01-05",
        "인구수": 1235,
        "townSize": 10,
        "latitude": 50.83,
        "선호도": 501
    },
    {
        "date": "2012-01-06",
        "인구수": 1557,
        "townName": "Tallahassee",
        "townSize": 7,
        "latitude": 21.46,
        "선호도": 443
    },
    {
        "date": "2012-01-07",
        "인구수": 1492,
        "townName": "New Orleans",
        "townSize": 10,
        "latitude": 9.94,
        "선호도": 405
    },
    {
        "date": "2012-01-08",
        "인구수": 915,
        "townSize": 16,
        "latitude": 7.76,
        "선호도": 309
    },
    {
        "date": "2012-01-09",
        "인구수": 376,
        "townName": "Dalas",
        "townSize": 17,
        "latitude": 5.8,
        "선호도": 287
    },
    {
        "date": "2012-01-10",
        "인구수": 43,
        "townName": "Oklahoma City",
        "townSize": 11,
        "latitude": 2.49,
        "선호도": 485
    },
    {
        "date": "2012-01-11",
        "인구수": 6,
        "townName": "Kansas City",
        "townSize": 10,
        "latitude": 0,
        "선호도": 890
    },
    {
        "date": "2012-01-12"
    }
/*     {
        "date": "2012-01-13",
        "townName": "Salt Lake City",
        "townSize": 12,
        "인구수": 425,
        "선호도": 670,
        "latitude": 40.75,
        "alpha":0.4
    },
    {
        "date": "2012-01-14",
        "latitude": 36.1,
        "선호도": 470,
        "townName": "Las Vegas",
        "townName2": "Las Vegas",
        "bulletClass": "lastBullet"
    },
    {
        "date": "2012-01-15"
    },
    {
        "date": "2012-01-16"
    },
    {
        "date": "2012-01-17"
    },
    {
        "date": "2012-01-18"
    },
    {
        "date": "2012-01-19"
    } */
];
var chart = AmCharts.makeChart("chartdiv", {
  type: "serial",
  theme: "dark",
  dataDateFormat: "YYYY-MM-DD",
  dataProvider: chartData,

  addClassNames: true,
  startDuration: 1,
  color: "#FFFFFF",
  marginLeft: 0,

  categoryField: "date",
  categoryAxis: {
    parseDates: true,
    minPeriod: "DD",
    autoGridCount: false,
    gridCount: 50,
    gridAlpha: 0.1,
    gridColor: "#FFFFFF",
    axisColor: "#555555",
    dateFormats: [{
        period: 'DD',
        format: 'DD'
    }, {
        period: 'WW',
        format: 'MMM DD'
    }, {
        period: 'MM',
        format: 'MMM'
    }, {
        period: 'YYYY',
        format: 'YYYY'
    }]
  },

  valueAxes: [{
    id: "a1",
    title: "인구수",
    gridAlpha: 0,
    axisAlpha: 0
  },{
    id: "a2",
    position: "right",
    gridAlpha: 0,
    axisAlpha: 0,
    labelsEnabled: false
  },{
    id: "a3",
    title: "선호도",
    position: "right",
    gridAlpha: 0,
    axisAlpha: 0,
    inside: true,
    duration: "mm",
    durationUnits: {
        DD: "d. ",
        hh: "h ",
        mm: "min",
        ss: ""
    }
  }],
  graphs: [{
    id: "g1",
    valueField:  "인구수",
    title:  "인구수",
    type:  "column",
    fillAlphas:  0.9,
    valueAxis:  "a1",
    balloonText:  "[[value]] miles",
    legendValueText:  "[[value]] mi",
    legendPeriodValueText:  "total: [[value.sum]] mi",
    lineColor:  "#263138",
    alphaField:  "alpha",
  },{
    id: "g2",
    valueField: "latitude",
    classNameField: "bulletClass",
    title: "latitude/city",
    type: "line",
    valueAxis: "a2",
    lineColor: "#786c56",
    lineThickness: 1,
    legendValueText: "[[description]]/[[value]]",
    descriptionField: "townName",
    bullet: "round",
    bulletSizeField: "townSize",
    bulletBorderColor: "#786c56",
    bulletBorderAlpha: 1,
    bulletBorderThickness: 2,
    bulletColor: "#000000",
    labelText: "[[townName2]]",
    labelPosition: "right",
    balloonText: "latitude:[[value]]",
    showBalloon: true,
    animationPlayed: true,
  },{
    id: "g3",
    title: "선호도",
    valueField: "선호도",
    type: "line",
    valueAxis: "a3",
    lineColor: "#ff5755",
    balloonText: "[[value]]",
    lineThickness: 1,
    legendValueText: "[[value]]",
    bullet: "square",
    bulletBorderColor: "#ff5755",
    bulletBorderThickness: 1,
    bulletBorderAlpha: 1,
    dashLengthField: "dashLength",
    animationPlayed: true
  }],

  chartCursor: {
    zoomable: false,
    categoryBalloonDateFormat: "DD",
    cursorAlpha: 0,
    valueBalloonsEnabled: false
  },
  legend: {
    bulletType: "round",
    equalWidths: false,
    valueWidth: 120,
    useGraphSettings: true,
    color: "#FFFFFF"
  }
});
</script>
</head>
<body>

	<div id="header" class="container" style="margin-left: 360px;">
		<div id="logo">
			<h1 style="margin-top: 5px; font-size: 2.5rem;">
				<a href="landing.do">Selper</a>
			</h1>
		</div>
		<div id="menu">
			<ul style="margin-top: 10px;">
				<li><a href="searchapi.do" accesskey="1" title="">상권 분석</a></li>
				<li><a href="../../board/listSearch.do" accesskey="2" title="">게시판</a></li>
				<li><a href="../message/receiveList.do" accesskey="3" title="">쪽지함</a></li>
				<li><a href="memberUpdateView.do" accesskey="4" title="">내
						정보</a></li>
				<li><a href="logOut.do" accesskey="5" title="">로그아웃</a></li>
			</ul>
		</div>
	</div>
	<div style="text-align: center;">
		<div style="width:37%; float: left; margin-left: 222px;">
			<form id="frm" style="width: 100%; height: 570px; border: 1px solid #000; line-height: 20px;">
				<div style="margin-top: 30px;">
				<div style="color:#0173B2; font-weight: 600;">대분류</div> <input type='checkbox' id='food' name='food'
						value='food' />음식
				</div>
				<br> <div style="color:#0173B2; font-weight: 600;">중분류</div>
				<div id=chkM_div style="width: 86%; margin: 0 auto;"></div>
				<br> <div style="color:#0173B2; font-weight: 600;">소분류</div>
				<div id=chkS_div style="width: 86%; margin: 0 auto;"></div>
				<br> <div style="color:#0173B2; font-weight: 600;">시도</div>
				<div id=chkct_div style="width: 86%; margin: 0 auto;">
					<input type='checkbox' id='indsS42' name='indsct' value='42'
						onclick='doindsct(this)' />강원도 <input type='checkbox'
						id='indsS41' name='indsct' value='41' onclick='doindsct(this)' />경기도
					<input type='checkbox' id='indsS48' name='indsct' value='48'
						onclick='doindsct(this)' />경상남도 <input type='checkbox'
						id='indsS47' name='indsct' value='47' onclick='doindsct(this)' />경상북도
					<input type='checkbox' id='indsS29' name='indsct' value='29'
						onclick='doindsct(this)' />광주광역시 <input type='checkbox'
						id='indsS27' name='indsct' value='27' onclick='doindsct(this)' />대구광역시
					<input type='checkbox' id='indsS30' name='indsct' value='30'
						onclick='doindsct(this)' />대전광역시 <input type='checkbox'
						id='indsS26' name='indsct' value='26' onclick='doindsct(this)' />부산광역시
					<input type='checkbox' id='indsS11' name='indsct' value='11'
						onclick='doindsct(this)' />서울특별시 <input type='checkbox'
						id='indsS36' name='indsct' value='36' onclick='doindsct(this)' />세종특별자치시
					<input type='checkbox' id='indsS31' name='indsct' value='31'
						onclick='doindsct(this)' />울산광역시 <input type='checkbox'
						id='indsS28' name='indsct' value='28' onclick='doindsct(this)' />인천광역시
					<input type='checkbox' id='indsS46' name='indsct' value='46'
						onclick='doindsct(this)' />전라남도 <input type='checkbox'
						id='indsS45' name='indsct' value='45' onclick='doindsct(this)' />전라북도
					<input type='checkbox' id='indsS50' name='indsct' value='50'
						onclick='doindsct(this)' />제주특별자치도 <input type='checkbox'
						id='indsS44' name='indsct' value='44' onclick='doindsct(this)' />충청남도
					<input type='checkbox' id='indsS43' name='indsct' value='43'
						onclick='doindsct(this)' />충청북도

				</div>
				<br> <div style="color:#0173B2; font-weight: 600;">시군구</div>
				<div id=chksi_div style="width: 86%; margin: 0 auto;"></div>
				<br> <div style="color:#0173B2; font-weight: 600;">행정동</div>
				<div id=chkad_div style="width: 86%; margin: 0 auto;"></div>

			</form>
		</div>
		<div id="map" style="width: 38%; height: 570px; margin-left: 959px; margin-top: 50px;">
		</div>
	</div>



	<!--  ------------------------------------------------- -->



<div id="chartdiv" style=" width: 77%; margin: 0 auto; margin-top: 30px;"></div>








	<!--  ------------------------------------------------- -->


	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68e235a08221d6cbdc558ffb322cb8cb&libraries=services"></script>
	<script>
		var arr = new Array();
		var markers = [];
		var maa = [];
		var markpl = [];
		
		var placeOverlay = new kakao.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

		<c:forEach items="${searchapi}" var ="b">
		arr.push({
			ctprvnCd : "${b.ctprvnCd}",
			ctprvnNm : "${b.ctprvnNm}"
		})
		</c:forEach>
		/* var x = ${b.lat };
		 var y =  ${b.lon }; */
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new kakao.maps.LatLng(36.3377402, 127.4447343), // 지도의 중심좌표
			level : 6
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		contentNode.className = 'placeinfo_wrap';
		placeOverlay.setContent(contentNode);

		function makeMarker(maa) {
			removeMarker();
			for (var i = 0; i < maa.length; i++) {
				var marker = new kakao.maps.Marker({
					map : map, // 마커를 표시할 지도
					position : new kakao.maps.LatLng(maa[i].latMarker,
							maa[i].lonMarker), // 마커를 표시할 위치
					title : maa[i].indsSclsNmMarker, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				});

				(function(marker, place) {

					kakao.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, maa[i]);

				markers.push(marker);
			}

		}

		function makeMa(markpl) {
			removeMarker();

			for (var i = 0; i < markpl.length; i++) {

				var marker = new kakao.maps.Marker({
					map : map, // 마커를 표시할 지도
					position : new kakao.maps.LatLng(markpl[i].latMarker,
							markpl[i].lonMarker), // 마커를 표시할 위치
					title : markpl[i].bizesNm, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				});

				(function(marker, place) {

					kakao.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, markpl[i]);

				markers.push(marker);

			}

		}

		function removeOverlay() {
			contentNode.innerHTML = "";
		}

		function displayPlaceInfo(place) {

			var content = '<div class="placeinfo">'
					+ '   <a class="title" title="' + place.bizesNm
					+ '" onclick = "removeOverlay()" >' + place.bizesNm
					+ '</a>';

			if (place.lnoAdrMarker) {
				content += '    <span title="' + place.lnoAdrMarker + '">'
						+ place.lnoAdrMarker
						+ '</span>'
						+ '  <span class="jibun" title="' + place.rdnmAdr + '">(지번 : '
						+ place.rdnmAdr + ')</span>';
			} else {
				content += '    <span title="' + place.rdnmAdr + '">'
						+ place.rdnmAdr + '</span>';
			}

			content += '</div>' + '<div class="after"></div>';

			contentNode.innerHTML = content;
			placeOverlay.setPosition(new kakao.maps.LatLng(place.latMarker,
					place.lonMarker));
			placeOverlay.setMap(map);

		}

		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			maa = [];
			markpl = [];
			markers = [];
		}

		function doCheckM(chk) {
			var obj = document.getElementsByName("indsM");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != chk) {
					obj[i].checked = false;
				}
			}
		}
		function doCheckS(chk) {
			var obj = document.getElementsByName("indsS");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != chk) {
					obj[i].checked = false;
				}
			}

		}

		function doindsct(chk) {
			var obj = document.getElementsByName("indsct");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != chk) {
					obj[i].checked = false;
				}
			}

		}
		function doChM(chk) {
			var obj = document.getElementsByName("indsb");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != chk) {
					obj[i].checked = false;
				}
			}

		}
		function doChS(chk) {
			var obj = document.getElementsByName("indsq");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != chk) {
					obj[i].checked = false;
				}
			}

		}

		$(document)
				.ready(
						function() {
							//시도 출력
							var values = [];
							var values2 = [];
							var aaa;
							var bbb;
							var ccc;

							$('input[name=indsct]')
									.change(
											function() {
												if ($(
														"input:checkbox[name=indsct]")
														.is(":checked") == false) {
													document
															.getElementById("chksi_div").innerHTML = "";
												} else {
													document
															.getElementById("chksi_div").innerHTML = "";
													var daeId = $(
															"input:checkbox[name='indsct']:checked")
															.val();
													var alldata = {
														"daeId" : daeId
													};
													$
															.ajax({
																url : "searchapicT.do",
																type : "POST",
																async : true, // 비동신통신
																data : alldata,
																success : function(
																		retVal) {
																	values = retVal.CtList; //java에서 정의한 ArrayList명을 적어준다.

																	$
																			.each(
																					values,
																					function(
																							index,
																							value) {
																						var txt = "<input type='checkbox' id = 'indsM"
																								+ value.signguCd
																								+ "' name='indsb' value='"
																								+ value.signguCd
																								+ "' onclick = 'doChM(this)'/>"
																								+ value.signguNm;
																						document
																								.getElementById("chksi_div").innerHTML += txt;

																						$(
																								document)
																								.on(
																										"change",
																										"input[id='indsM"
																												+ value.signguCd
																												+ "']",
																										function() {
																											/* alert($("#indsM"+value.indsMclsCd).val()); */
																											var MId = $(
																													"#indsM"
																															+ value.signguCd)
																													.val();
																											var alldata = {
																												"MId" : MId
																											};
																											if ($(
																													"input:checkbox[id=indsM"
																															+ value.signguCd
																															+ "]")
																													.is(
																															":checked") == false) {
																												document
																														.getElementById("chkad_div").innerHTML = "";
																											} else {
																												document
																														.getElementById("chkad_div").innerHTML = "";
																												$
																														.ajax({
																															url : "searchapiMi.do",
																															type : "POST",
																															async : true, // 비동신통신
																															data : alldata,
																															success : function(
																																	retVal) {
																																/* alert("성공"); */
																																values = retVal.MiList; //java에서 정의한 ArrayList명을 적어준다.
																																$
																																		.each(
																																				values,
																																				function(
																																						index,
																																						value) {
																																					var txt = "<input type='checkbox' id = 'indsS"
																																							+ value.adongCd
																																							+ "' name='indsq' value='"
																																							+ value.adongCd
																																							+ "' onclick = 'doChS(this)' />"
																																							+ value.adongNm;
																																					document
																																							.getElementById("chkad_div").innerHTML += txt;

																																					$(
																																							document)
																																							.on(
																																									"change",
																																									"input[id='indsS"
																																											+ value.adongCd
																																											+ "']",
																																									function() {
																																										var MarkId = $(
																																												"#indsS"
																																														+ value.adongCd)
																																												.val();
																																										var alldata = {
																																											"MarkId" : MarkId,
																																											"aaa" : aaa,
																																											"bbb" : bbb
																																										};
																																										alert(aaa);
																																										$
																																												.ajax({
																																													url : "searchapiMark.do",
																																													type : "POST",
																																													async : true, // 비동신통신
																																													data : alldata,
																																													success : function(
																																															retVal) {
																																														alert("성공");

																																														values = retVal.markList; //java에서 정의한 ArrayList명을 적어준다. 

																																														$
																																																.each(
																																																		values,
																																																		function(
																																																				index,
																																																				value) {

																																																			/* makeMarker(value.latMarker, value.lonMarker, value.indsSclsNmMarker); */
																																																			markpl
																																																					.push(value);

																																																		});

																																														makeMa(markpl);

																																													}
																																												});

																																									});

																																				});
																															}
																														});
																											}
																										});

																					});
																}
															});
												}
											});

							$('#food')
									.change(
											function() {
												if ($(
														"input:checkbox[name=food]")
														.is(":checked") == false) {
													document
															.getElementById("chkM_div").innerHTML = "";
												} else {
													$
															.ajax({
																url : "searchapiM.do",
																type : "POST",
																async : true, // 비동신통신
																success : function(
																		retVal) {
																	values = retVal.mList; //java에서 정의한 ArrayList명을 적어준다.
																	$
																			.each(
																					values,
																					function(
																							index,
																							value) {
																						var txt = "<input type='checkbox' id = 'indsM"
																								+ value.indsMclsCd
																								+ "' name='indsM' value='"
																								+ value.indsMclsCd
																								+ "' onclick = 'doCheckM(this)'/>"
																								+ value.indsMclsNm;
																						document
																								.getElementById("chkM_div").innerHTML += txt;

																						$(
																								document)
																								.on(
																										"change",
																										"input[id='indsM"
																												+ value.indsMclsCd
																												+ "']",
																										function() {
																											aaa = value.indsMclsCd;
																											/* alert($("#indsM"+value.indsMclsCd).val()); */
																											var userId = $(
																													"#indsM"
																															+ value.indsMclsCd)
																													.val();
																											var alldata = {
																												"userId" : userId
																											};
																											if ($(
																													"input:checkbox[id=indsM"
																															+ value.indsMclsCd
																															+ "]")
																													.is(
																															":checked") == false) {
																												document
																														.getElementById("chkS_div").innerHTML = "";
																											} else {
																												document
																														.getElementById("chkS_div").innerHTML = "";
																												$
																														.ajax({
																															url : "searchapiS.do",
																															type : "POST",
																															async : true, // 비동신통신
																															data : alldata,
																															success : function(
																																	retVal) {
																																/* alert("성공"); */
																																values = retVal.sList; //java에서 정의한 ArrayList명을 적어준다.
																																$
																																		.each(
																																				values,
																																				function(
																																						index,
																																						value) {
																																					var txt = "<input type='checkbox' id = 'indsS"
																																							+ value.indsMclsCd
																																							+ "' name='indsS' value='"
																																							+ value.indsMclsCd
																																							+ "' onclick = 'doCheckS(this)' />"
																																							+ value.indsSclsNm;
																																					document
																																							.getElementById("chkS_div").innerHTML += txt;

																																					$(
																																							document)
																																							.on(
																																									"change",
																																									"input[id='indsS"
																																											+ value.indsMclsCd
																																											+ "']",
																																									function() {
																																										bbb = value.indsMclsCd;
																																										var MarkerId = $(
																																												"#indsS"
																																														+ value.indsMclsCd)
																																												.val();
																																										var alldata = {
																																											"MarkerId" : MarkerId
																																										};
																																										$
																																												.ajax({
																																													url : "searchapiMarker.do",
																																													type : "POST",
																																													async : true, // 비동신통신
																																													data : alldata,
																																													success : function(
																																															retVal) {
																																														alert("성공");

																																														values = retVal.makerList; //java에서 정의한 ArrayList명을 적어준다.
																																														$
																																																.each(
																																																		values,
																																																		function(
																																																				index,
																																																				value) {
																																																			/* makeMarker(value.latMarker, value.lonMarker, value.indsSclsNmMarker); */
																																																			maa
																																																					.push(value);
																																																		});
																																														makeMarker(maa);
																																													}
																																												});

																																									});

																																				});
																															}
																														});
																											}
																										});
																					});
																}
															});
												}
											});
							/* 3중 ajax 끝 */

						});
	</script>


	<%--  <table>
        <tr>
            <td colspan="7" width="100%" bgcolor="pink"></td>
        </tr>
        <c:forEach items="${searchapi}" var ="c">
            <tr>
                <td width="200">${c.indsMclsNm }</td>
                <td width="200">${c.indsSclsNm }</td>
                <td width="200">${c.lnoAdr }</td>
                <td width="200">${c.lat }</td>
                <td width="200">${c.lon }</td>
            </tr>
            <tr>
                <td colspan="7" width="100%" bgcolor="pink"></td>
            </tr>
        </c:forEach>
    </table> --%>

</body>
</html>