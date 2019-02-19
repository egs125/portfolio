$(document).ready(function(){
	
	initPage();
	
	$("li").on("click", function(e){
		var page = $(this).text().trim();
		selectPage(page);
	});

});

function initPage(){
	getNoteList(1);
}

function selectPage(page){
	
	var curBlock = parseInt($("#curBlock").val());
	var curPage = parseInt($("#curPage").val());
	
	var prevClass = $("#prevBtn").hasClass("disabled");
	var nextClass = $("#nextBtn").hasClass("disabled");

	var mod = curPage % 5;	
	if(mod == 0) mod = 5;

	if(page == "«" && prevClass != true){
		page = curPage - mod;	
	}else if(page == "«" && prevClass == true){
		alert("No more previous pages");
		return false;
	}else if(page == "»" && nextClass != true){
		page = (curPage + 5 - mod) + 1;
	}else if(page == "»" && nextClass == true){
		alert("No more pages");
		return false;
	}
	
	getNoteList(page);
}

//테이블 목록 생성 
function getNoteList(page){
	
	var param = {"curPage" : page};
	
	$.ajax({
		url : "getNoteList",
		type : "get",
		data : param,
		dataType : "json",
		/*beforeSend : function(){
			$("#loading img").css("display", "inline-block");
		},*/ 
		success : function(data){
			console.log("getNoteList : success");
			
			var result = "";
			
			if(data.list.length > 0){
				for(var i in data.list){
					result += "<tr><td>" + data.list[i].noteNo + "</td>";
					result += "<td><a href='readNote?noteNo=" + data.list[i].noteNo + "'>" + data.list[i].title + "</a></td>";
					result += "<td>" + data.list[i].writer + "</td>";
					result += "<td>" + data.list[i].updDt + "</td></tr>";
				}
				
				setPagingNav(data.paging);
				
			}else{
				result = "<tr><td colspan='4'>No Saved Guest Notes</td></tr>";
			}
			
			$("tbody").html(result); 
		},
		error : function(e){
			console.log("getNoteList :error");
		},
		complete : function(e){
			/*$("#loading img").css("display", "none");*/
			//setPagingNav(page);
		}		
	});
}


function setPagingNav(paging){
	
	var curPage = paging.curPage;
	var curBlock = paging.curBlock;
	var firstPage = paging.firstPage;
	var lastPage = paging.lastPage;
	var index = paging.lastPage - paging.firstPage + 1;
	
	$("#curBlock").val(paging.curBlock);
	$("#curPage").val(paging.curPage);
	
	for(var i = 1; i <= index; i++) {
		
		var pageBox =  '<li><a href="#">' + firstPage + '</a></li>';
		$("#nextBtn").before(pageBox);
		
		if(firstPage == curPage){
			$(".pagination li:eq(" + i + ")").attr("class", "active");
		}
		++firstPage;
		
	}
	
	if(curBlock <= 1) $("#prevBtn").attr("class", "disabled");	
	if(paging.totalBlockNum <= curBlock) $("#nextBtn").attr("class", "disabled");
	
}

