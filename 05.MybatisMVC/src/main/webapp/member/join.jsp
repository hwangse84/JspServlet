<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">회원가입</h3>
            <form>

              <div class="row">
                <div class="col-md-6 mb-8">

                  <div class="form-outline">
                    <input type="text" id="user_id"  name="user_id" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName">아이디</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input type="text" class="form-control form-control-lg" id="user_pw" name="user_pw" />
                    <label for="birthdayDate" class="form-label">비밀번호</label>
                  </div>

                </div>
                 <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input type="password" class="form-control form-control-lg" id="user_pwchk" />
                    <label for="birthdayDate" class="form-label">비밀번호 확인</label>
                  </div>

                </div>
               
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="text" id="name" name="name" class="form-control form-control-lg" />
                    <label class="form-label" for="emailAddress">이름</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="email" name="email" class="form-control form-control-lg" />
                    <label class="form-label" for="email">이메일</label>
                  </div>

                </div>
              </div>

              <div class="row">
                
              </div>

              <div class="mt-4 pt-4">
                <a class="btn btn-primary btn-lg" id ="btn_post">주소찾기</a>
               
              </div>
              
              
              
              <div class="row">
                <div class="col-md-6 mb-4 pb-2 pt-3">

                  <div class="form-outline">
                    <input type="text" id="address" name="address" class="form-control form-control-lg" />
                    <label class="form-label" for="emailAddress">주소</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2 pt-3">

                  <div class="form-outline">
                    <input type="text" id="post" name="post" class="form-control form-control-lg" />
                    <label class="form-label" for="phoneNumber">주소2</label>
                  </div>

                </div>
              </div>
                 <div class="col-md-3 mt-4 pt-4">
                <a class="btn btn-primary btn-lg" >회원가입</a>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


	
	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	$('#btn_post').click(function(){
	    new daum.Postcode({
	    	//let address=data.userSelectedType=='R'?data.roadAddress:data.jibunAddress;//도로명, 지번 중 선택
	    	
	    	
	        oncomplete: function(data) {
	        	
	            $('#address').val(data.address);
	            $('#post').val(data.zonecode);
	        }
	    }).open()
	});
	</script>
	



<%@ include file="/include/footer.jsp"%>
</html>