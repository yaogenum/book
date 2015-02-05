function read(flags) {
	var flag = flags;
	var s;

	var id_chart = "id_chart";
	if (flag == "one") {
		s = "read ";
		id_chart = "read";
	}
	if (flag == "two") {
		s = "tag";
		id_chart = "tag";
	}
	if (flag == "three") {
		s = "music";
		id_chart = "music";
	}
	$.ajax( {
		type : "GET",
		data : "flag=" + flag,
		url : "servlet/Jusion",
		dataType : "json",
		success : function(data, status) {

			$("#chartdiv").insertFusionCharts( {//main
						swfUrl : "js/charts/MSLine.swf",//MSColumn3D.swf
						width : "520",
						height : "420",
						id : "id_chart",
						dataFormat : "json",
						dataSource : {
							"chart" : {
								"caption" : s + "records",
								"yaxisname" : "amount",
								"bgcolor" : "F7F7F7, E9E9E9",
								"numvdivlines" : "10",
								"divlinealpha" : "30",
								"labelpadding" : "10",
								"yaxisvaluespadding" : "10",
								"showvalues" : "1",
								"rotatevalues" : "1",
								"valueposition" : "Below",
								"canvaspadding" : "10"
							},

							//x
							"categories" : [ {
								"category" : [ {
									"label" : data[0]
								}, {
									"label" : data[2]
								}, {
									"label" : data[4]
								}, {
									"label" : data[6]
								}, {
									"label" : data[8]
								}, {
									"label" : data[10]
								}, {
									"label" : data[12]
								} ]
							} ],

							//y多个子柱
							"dataset" : [ {
								"seriesname" : s,
								"color" : "A66EDD",
								"data" : [ {
									"value" : data[1]
								}, {
									"value" : data[3]
								}, {
									"value" : data[5]
								}, {
									"value" : data[7]
								}, {
									"value" : data[9]
								}, {
									"value" : data[11]
								}, {
									"value" : data[13]
								} ]
							},

							]
						}
					});
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});

}

var name;
function get_name(names) {
	name = names;
}
function get_infor() {
	$.ajax( {
		type : "POST",
		data : "users_name=" + name,
		url : "servlet/Jusion",
		dataType : "json",
		success : function(data, status) {

			$("#chartdiv").insertFusionCharts( {//main
						swfUrl : "js/charts/MSLine.swf",//MSColumn3D.swf
						width : "520",
						height : "420",
						id : "users_chart",
						dataFormat : "json",
						dataSource : {
							"chart" : {
								"caption" : "users records",
								"yaxisname" : "amount",
								"bgcolor" : "F7F7F7, E9E9E9",
								"numvdivlines" : "10",
								"divlinealpha" : "30",
								"labelpadding" : "10",
								"yaxisvaluespadding" : "10",
								"showvalues" : "1",
								"rotatevalues" : "1",
								"valueposition" : "Below",
								"canvaspadding" : "10"
							},

							//x
							"categories" : [ {
								"category" : [ {
									"label" : data[0]
								}, {
									"label" : data[2]
								}, {
									"label" : data[4]
								}, {
									"label" : data[6]
								}, {
									"label" : data[8]
								}, {
									"label" : data[10]
								}, {
									"label" : data[12]
								} ]
							} ],

							//y多个子柱
							"dataset" : [ {
								"seriesname" : "economy",
								"color" : "00CC00",
								"data" : [ {
									"value" : data[1]
								}, {
									"value" : data[3]
								}, {
									"value" : data[5]
								}, {
									"value" : data[7]
								}, {
									"value" : data[9]
								}, {
									"value" : data[11]
								}, {
									"value" : data[13]
								} ]
							}, {
								"seriesname" : "fiction",
								"color" : "#FF0000",
								"data" : [ {
									"value" : data[15]
								}, {
									"value" : data[17]
								}, {
									"value" : data[19]
								}, {
									"value" : data[21]
								}, {
									"value" : data[23]
								}, {
									"value" : 4
								}, {
									"value" : 6
								} ]
							}, {
								"seriesname" : "it",
								"color" : "660033",
								"data" : [ {
									"value" : data[25]
								}, {
									"value" : data[27]
								}, {
									"value" : data[29]
								}, {
									"value" : data[31]
								}, {
									"value" : data[33]
								}, {
									"value" : data[35]
								}, {
									"value" : data[37]
								} ]
							}, {
								"seriesname" : "literature",
								"color" : "A66EDD",
								"data" : [ {
									"value" : data[39]
								}, {
									"value" : data[41]
								}, {
									"value" : data[43]
								}, {
									"value" : data[45]
								}, {
									"value" : data[47]
								}, {
									"value" : data[49]
								}, {
									"value" : data[51]
								} ]
							}, {
								"seriesname" : "math",
								"color" : "#00FFFF",
								"data" : [ {
									"value" : data[53]
								}, {
									"value" : data[55]
								}, {
									"value" : data[57]
								}, {
									"value" : data[59]
								}, {
									"value" : data[61]
								}, {
									"value" : data[63]
								}, {
									"value" : data[65]
								} ]
							}, {
								"seriesname" : "scientist",
								"color" : "CC6666",
								"data" : [ {
									"value" : data[67]
								}, {
									"value" : data[69]
								}, {
									"value" : data[71]
								}, {
									"value" : data[73]
								}, {
									"value" : data[75]
								}, {
									"value" : data[77]
								}, {
									"value" : data[79]
								} ]
							}, {
								"seriesname" : "tool",
								"color" : "FFFF66",
								"data" : [ {
									"value" : data[81]
								}, {
									"value" : data[83]
								}, {
									"value" : data[85]
								}, {
									"value" : data[87]
								}, {
									"value" : data[89]
								}, {
									"value" : data[91]
								}, {
									"value" : data[93]
								} ]
							},

							]
						}
					});
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});

}