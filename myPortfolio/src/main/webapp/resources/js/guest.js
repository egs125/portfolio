$(document).ready(function(){
	
	initPage();
	
	$("li").on("click", function(e){
		var page = $(this).text().trim();
		setPaging(page);
		getNoteList(page);
	});
	/*
	$("#toWrite").on("click", function(){
		location.href=""
	});*/
});

function initPage(){
	getNoteList(1);
}

function setPaging(page){
	
	var curBlock = parseInt($("#curBlock").val());
	var curPage = parseInt($("#curPage").val());
	
	var prevClass = $("#prevBtn").hasClass("disabled");
	var nextClass = $("#nextBtn").hasClass("disabled");

	var mod = curPage % 5;	
	if(mod == 0) mod = 5;

	if(page == "«" && prevClass != true){
		page = curPage - mod;	
	}else if(page == "«" && prevClass == true){
		return;
	}else if(page == "»" && nextClass != true){
		page = (curPage + 5 - mod) + 1;
	}else if(page == "»" && nextClass == true){
		return;
	}
	
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
				result = "<tr><td colspan='4'>불러올 글이 없습니다.</td></tr>";
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

//하단 페이징 네비게이션 세팅
function setPagingNav(paging){
	
	$("#curBlock").val(paging.curBlock);
	$("#curPage").val(paging.curPage);
	var index = paging.lastPage - paging.firstPage + 1;
	
	//여기 인덱스 값 고칠것
	for(var i = 1; i < 6; i++) {
		var pageNo = paging.firstPage;
		$(".pagination li:eq(" + i + ")").removeClass("active");
		
		for(var j = 1; j <= index; j++){
			
			var pageBox = '<li><a href="#">' + j + '</a></li>';
			$("#prevBtn").after(pageBox);

			if(i == j) {
				$(".pagination li:eq(" + j + ")").attr("style", "dislpay:inline-block");
				$(".pagination li:eq(" + j + ")").html('<a href="#">' + pageNo + '</a>');						
			}
			if(paging.curPage == $(".pagination li:eq(" + j + ")").text().trim())
				$(".pagination li:eq(" + j + ")").attr("class", "active");
			++pageNo;				
		}
	}
	if(paging.curBlock <= 1) $("#prevBtn").attr("class", "disabled");	
	if(paging.totalBlockNum <= paging.curBlock) $("#nextBtn").attr("class", "disabled");
	
	/*
	var param = {"curPage" : page};
	
	$.ajax({
		url : "setPaging",
		type : "get",
		data : param,
		dataType : "json", 
		success : function(data){
			console.log("setPaging : success");
			
			$("#curBlock").val(data.curBlock);
			$("#curPage").val(data.curPage);
			var index = data.lastPage - data.firstPage + 1;
			
			for(var i = 1; i < 6; i++) {
				var pageNo = data.firstPage;
				$("li:eq(" + i + ")").removeClass("active");
				
				for(var j = 1; j <= index; j++){
					if(i == j) {
						$("li:eq(" + j + ")").attr("style", "dislpay:inline-block");
						$("li:eq(" + j + ")").html('<a href="#">' + pageNo + '</a>');						
					}
					if(data.curPage == $("li:eq(" + j + ")").text().trim())
						$("li:eq(" + j + ")").attr("class", "active");
					++pageNo;				
				}
			}
			if(data.curBlock <= 1) $("#prevBtn").attr("class", "disabled");	
			if(data.totalBlockNum <= data.curBlock) $("#nextBtn").attr("class", "disabled");
		
		},
		error : function(e){
			console.log("setPaging :error");
		}
	});	*/
}

