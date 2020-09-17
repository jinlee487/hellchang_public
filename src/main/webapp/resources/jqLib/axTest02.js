$(function() {
// 1. axMemberList
	$('#amlist').click(function() {
		//alert("testtest");
		$.ajax({
			type:'Post',
			url:'amlist',
			success:function(result){
				$('#resultArea1').html(result);
			}
		}); //ajax 
	}); // amlist_click
	
// 2. axMemberList 에서 ID 가 쓴 글목록 ajax로 하단에 출력하기
// 2.1) jQuery : class , this 이용	
	$('.cc').click(function(){
		// 2.1.1) id 와 id의 값 확인
		var id= $(this).html();
		console.log('Click id 확인 =>'+id);
		// 2.1.2) ajax code
		$.ajax({
			type:'Get',
			url:'listcri',
			data: {
				searchType : 'w',
				keyword : id
				},
			success:function(result){
				$('#resultArea2').html(result);
			}
		}); //ajax
	}); // cc_click	
	
// 3. 삭제 버튼 만들기
// => 삭제버튼 클릭하면  confirm Dialog 로 "정말로 삭제 하십니까 ?"
//    확인 후 삭제하기	
	$('.del').click(function(){
		// 2.1.1) id 와 id의 값 확인
		var id= $(this).attr('id');
		console.log('Delete id =>'+id);
		
		if (confirm(id+"님을 정말 삭제 하시겠습니까 ? \n Yes 면 '확인', No 면 '취소' 를 선택하세요 ~~")) {
			// Yes -> Delete
/*			
 * 				1) View from server 			
 * 
 * 				$.ajax({
				type:'Get',
				url:'axdelete',
				data: {
					id : id
					},
				success:function(result){
					alert("삭제 되었습니다 ~~") ;
					// Controller 에서 "redirect:amlist" 한 경우 
					//$('#resultArea1').html(result);
					// Controller 에서 "member/doFinish" 한 경우 
					// => resultArea2 에 결과 출력 
					// $(this).html(''); -> 적용안됨
					$('#'+id).html('');
					//$('#resultArea2').html(result);
				}
			}); //ajax
			*/
			
			// 2) data from server
			$.ajax({
				type:'Get',
				url:'jsdelete',
				data: {
					id : id
					},
				success:function(data){
					if(data.fCode=='DS'){
						alert("삭제 되었습니다 ~~") ;
						$('#'+id).html('');
					}else{
						alert("삭제 오류 발생(삭제실패)");
					}
				}
			}); //ajax
		}else alert("삭제가 취소 되었습니다 ~~") ;
	}); // del_click
	
	
}); // ready

// 2. axMemberList 에서 ID 가 쓴 글목록 ajax로 하단에 출력하기
// 2.2) JScript : a Tag의 onclick 이벤트 이용
//  => Board Service : SearchCrtieria (요청명 : listcri )
//     searchType : 'w' , keyword : 'id 의 Value'
function aidList(id) {
	console.log("aidList Click id => "+id);
	$.ajax({
		type:'Get',
		url:'listcri',
		data:{
			searchType : 'w' ,
			keyword : id
			},
		success:function(result){
			$('#resultArea2').html(result);
			}
	});//ajax
} // aidList