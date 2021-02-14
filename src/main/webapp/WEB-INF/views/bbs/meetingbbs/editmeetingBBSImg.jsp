<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="offset-6 col-6">
   <span id="hide" style="display: none; float: right;"> <a
      href="<c:url value='/WriteFreebbs.do'/>"><span
         style="font-size: 0.8em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글 쓰기
            &nbsp;</span></a>
   </span> <span id="hide" style="display: none; float: right;"> </span> <span
      style="float: right;"> <a
      href="<c:url value="/MeetingBBS.do"/>" id="meeting"> <span
         style="font-size: 1.0em; font-weight: bold; color: black;">&nbsp;모임&nbsp;</span>
   </a> <a href="<c:url value='/FreebbsList.do'/>"> <span
         style="font-size: 1.0em;" class="border-left">&nbsp; 자유</span>
   </a>
   </span>

</div>


<section class="hero-wrap hero-wrap-2"
   style="background-image: url(<c:url value='/resources/images/banner11.jpg' />); "
   data-stellar-background-ratio="0.5">
   <div class="overlay"></div>
   <div class="container">
      <div
         class="row no-gutters slider-text align-items-center justify-content-center">
         <div class="col-md-9 ftco-animate mb-0 text-center">
            <h1 class="mb-0 bread">모임의 활동을 구경해보세요!</h1>
         </div>
      </div>
   </div>
</section>



<div class="container">
   <div class="row">
      <div class="col-md-12" style="margin-top: 20px;">
         
            <!-- 씨큐리티 적용:csrf취약점 방어용 -->
            <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
            <input type="hidden" value="${mbbsno}" id="mbbsno" name="mbbsno">
         <!--==============이미지 등록=================== -->
            <form id="frm" method="post" enctype="multipart/form-data" action="<c:url value='/EditMBBSImg.do'/>">
            <div class="col-md-12 wrap-about pl-md-5 ftco-animate py-5">
               <label class="col-sm-10 control-label" style="font-size:20pt; color="#FF7A5C" ">이미지</label>
               <label for="mbbsimg"><span class="btn btn-success offset-9" id="addMBBSImg" style="color: white; background-color: #FF7A5C; border: 0px;">+</span></label>
               <input type="file" id="mbbsimg" name="mbbsimg" style="display: none;" />
            </div>
            </form>
            <div id="mbbsImgSelect" style="width: 900px; height: 600px;">
               <div class='row offset-1 col-md-12' style="width: 900px;">
                  <div class='imageText' id="imageText" style="width: 900px;" >
                  </div>
               </div>
            </div>   
         <!--==============이미지 등록 끝=================== -->   
            <div class="form-group">
               <div class="col-sm-12">
                  <a href="<c:url value='/MeetingBBS.do'/>"><button  class="btn col-sm-12" style="background-color: #FF7A5C; width: 1110px; height: 60px; color: white;  border-radius: 25px; font-size:20pt;">등록</button></a>
               </div>
            </div>
         </form>
      </div>
   </div>

</div>

<!-- 경고창 모달 시작 -->
    <div class="modal fade" id="small-modal" data-backdrop="static">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-body">
             <button class="close" data-dismiss="modal">
                <span>&times;</button>
             </button>
             <h5 class="modal-title"><span class="glyphicon glyphicon-bullhorn"></span> 경고 메시지</h5>
             <h6 id="warningMessage"></h6>
          </div>
            
       </div>
     </div>
   </div>


<script>

$(document).ready(function() {


   $(function(){
   var focusObject;

   //모달창이 닫혔을때 발생하는 이벤트 처리 - 즉 해당 입력 요소 에 포커스 주기

   $('form').on('submit',function(){
      
      if($(this).get(0).contents.value==""){
         $('#warningMessage').html("내용를 입력하세요");
         $('#small-modal').modal('show');
         focusObject =$(this).get(0).content;
         return false;               
      }
      
   });   
   

   $('#mbbsimg').change(function(){
      console.log('들어와써');
      var filename = $(this)[0].files[0].name;
      console.log('filename: ' , filename);
      console.log('mbbsno hidden:' , $('#mbbsno').val());
      var form = $('#frm');
        
        var formData = new FormData(form[0]);
        formData.append("file",jQuery('#mbbsimg')[0].files[0]);
        console.log("formData : ", formData);
        var mbbsno = $('#mbbsno').val();
        $.ajax({
          url: "<c:url value='/EditMBBSImg.do?mbbsno="+mbbsno+"' />",  
          type : 'POST',
          enctype : 'multipart/form-data',
          processData : false,
          contentType : false,
          data : formData,
          dataType : "json",
          success : function(data) {
             console.log("성공 : ",data);
             $("#imageText").html("");
             $.each(data,function(index, element){
                
                //$("#mbbsImgSelect").html("");
                appendFile(element['imgname'], $('#mbbsno').val(), element['imgno']);             
             });
          },
          error : function(error) {
                 //console.log("상태코드:",request.status);
                 //console.log("서버로부터 받은 HTML:",request.responseText);
                 console.log("에러:",error);
              }
          
        });

   });

    var index=0;   
   var appendFile = function(filename,mbbsno,imgno){
      
      console.log("appendFile:::",filename, mbbsno, imgno);
      index++;
      var str = "";
      
      str += "<img id='mbbs_img"+index+"' src='<c:url value='/images/bbs/bbsno"+mbbsno+"/"+filename+"'/>' alt='Raised circle image' class='img-fluid shadow-lg' style='width: 200px; height: 200px;'>"
      
      str += "<div class='btn'>"
      str += "<button type='submit' id='isDelete"+index+"'>삭제</button>"
      str += "</div>"
      
      
      $("#imageText").append(str);
      
      $('#isDelete'+index).click(function(){
         console.log('isDelete 들어왔어!!!!!!!!');
         if (confirm("정말로 삭제 하시겠습니까?")) {
              //location.replace("<c:url value='/DeletMBBSImg.do?imgno="+imgno+"'/>");
              
              $.ajax({
                url: "<c:url value='/DeletMBBSImg.do'/>",
                type : 'POST',
                data : {"imgno":imgno, "mbbsno":mbbsno},
                dataType : "json",
                success : function(data) {
                   console.log("삭제 성공 : ",data);
                   $("#imageText").html("");
                   $.each(data,function(index, element){
                      console.log("element['imgno'] : ",element['imgno']);
                      //$("#mbbsImgSelect").html("");
                      appendFile(element['imgname'], element['mbbsno'], element['imgno']);             
                   });
                   
                   
                },
                error : function(error) {
                       //console.log("상태코드:",request.status);
                       //console.log("서버로부터 받은 HTML:",request.responseText);
                       console.log("에러:",error);
                    }
                
              });
              
              
          }
      });
   }

   var mbbsno = $('#mbbsno').val();
      
      $.ajax({
         url: "<c:url value='/EditMBBSImgList.do' />",  
          type : 'POST',
          data : {"mbbsno":mbbsno},
          dataType : "json",
          success : function(data) {
            
             $("#imageText").html("");
             $.each(data,function(index, element){
                console.log("=========================이미지 목록 가져오기=======================");
                console.log("element['imgno'] : ",element['imgno']);
                //$("#mbbsImgSelect").html("");
                appendFile(element['imgname'], element['mbbsno'], element['imgno']);             
             });

          },
          error : function(error) {
               //console.log("상태코드:",request.status);
               //console.log("서버로부터 받은 HTML:",request.responseText);
               console.log("에러:",error);
            }
          
        });
   

});/////////

   

   
});
</script>