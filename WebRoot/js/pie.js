function f_pie() {
$("#chartdiv3").insertFusionCharts({
	swfUrl : "charts/Pie3D.swf",
	width : "600",
	height : "500",
	id : "myChartId2",
	dataFormat : "json",
	dataSource : {
	  "chart":{
		"caption":"Company Revenue",
		"showpercentvalues":"1"
	  },
	  "data":[{
		  "label":"Services",
		  "value":"26"
		},
		{
		  "label":"Hardware",
		  "value":"32"
		},
		{
		  "label":"Software",
		  "value":"42"
		}
	  ]
	}
});
}