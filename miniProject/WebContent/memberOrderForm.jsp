<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 지도 표시하기</title>
<!-- http://openapi.map.naver.com/api/geocode.php?key=nx38JVlPNEar_o9yTq_k&encoding=utf-8&coord=tm128&query=강남버거킹; -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=T9vcbeJJCFtzV0otN6HB"></script>
</head>
<body>
	<input type="button" class="btn btn-danger btn-lg" value="HOME"onclick="location.href='<%=request.getContextPath()%>/index.jsp'"/>
	<div id="map" style="width: 100%; height: 400px;"></div>
		<script type="text/javascript">
		nhn.map.Bootstrap
				.setup(
						{
							moduleroot : "/js2/compact/",
							timeStamp : "_v1481850310607",
							apiTimeStamp : "_v1480322581312",
							env : {
								bugreportURL : "https://report.map.naver.com/form.nhn",
								mashup : {},
								hasMashUp : false,

								home : {
									"result" : {
										"code" : "0",
										"totalCount" : "1",
										"region" : null,
										"favorites" : null,
										"category" : null,
										"type" : "REGION_HOME",
										"banner" : {
											"title" : "플레이스DB 이용자 프로모션",
											"imageUrl" : "http://static.naver.net/maps/img/banner_place_main_v2.png ",
											"width" : "316",
											"height" : "66",
											"link" : "http://blog.naver.com/naver_map/220822309327 ",
											"target" : "_blank",
											"nclickCode" : "lbn.banner1"
										},
										"bannerForRoute" : {
											"title" : "플레이스DB 이용자 프로모션",
											"imageUrl" : "http://static.naver.net/maps/img/banner_place_main_v2.png ",
											"width" : "316",
											"height" : "66",
											"link" : "http://blog.naver.com/naver_map/220822309327 ",
											"target" : "_blank",
											"nclickCode" : "lbn.banner1"
										},
										"userIP" : "1.212.157.149",
										"ipTargeting" : "N",
										"serverTime" : "1482294845518"
									}
								},
								param : {
									"mapMode" : "0",
									"lng" : "127.419984",
									"pinId" : "12454435",
									"pinType" : "site",
									"lat" : "36.324852",
									"dlevel" : "11",
									"level" : "2",
									"menu" : "location",
									"ipTargeting" : "N"
								},
								client : {
									x : "127.4259",
									y : "36.320342",
									address : "대전광역시 중구 대흥동",
									subwayRegion : "3000"
								},
								version : {
									"flash" : "_v1481850310607"
								},
								panorama : {
									metaDomain : "pvxml.map.naver.com"
								},
								theme : {
									config : {
										"mappletImageUploaderUrl" : "/mapplet/uploadImage.nhn"
									}
								},
								serverPhase : "real",
								serverTimestamp : "1482294845583",
								user : {
									id : "vallo_follow",
									email : "vallo_follow@naver.com"
								},
								hmacToken : {
									"token" : "RRtrY/E8jFUNvFIC/NHDQxTC+wI=",
									"randomKey" : "rc2FyUDz1I9itHke",
									"expireTime" : "1482296400000"
								},
								jsTimestamp : "_v1481850310607"

							}
						}).boot();
	</script>

</body>
</html>