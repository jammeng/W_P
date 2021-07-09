/**
 * 
 */
function loginCheck(){
   if(document.frm.userid.value.length == 0){
      alert("아이디를 써주세요");
      frm.userid.focus();
      return false;
   }
   if (document.frm.pwd.value==""){
      alert("암호는 반드시 입력해야 합니다.");
      frm.pwd.focus();
      return false;
   }
   return;
}

function idCheck(){
   if(document.frm.userid.value==""){
      alert('아이디를 입력하여 주십시오.');
      document.formm.userid.focus();
      return;
   }
   var url = "idCheck.do?userid=" + document.frm.userid.value;
   window.open(url,"_blank_1",
               "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok(userid){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

function joinCheck(){
   if(document.frm.name.value.length == 0){
      alert("이름을 입력해주세요");
      frm.name.focus();
      return false;
   }
   if(document.frm.userid.value.length < 4){
      alert("아이디는 4글자 이상을 입력해야 합니다.");
      frm.userid.focus();
      return false;
   }
   if (document.frm.pwd.value==""){
      alert("암호는 반드시 입력해야 합니다.");
      frm.pwd.focus();
      return false;
   }
   if (document.frm.pwd_check.value != document.frm.pwd.value){
      alert("암호가 일치하지 않아요~");
      frm.pwd_check.focus();
      return false;
   }
      if(document.frm.reid.value.length == 0){
      alert("중복확인을 해주세요");
      frm.name.focus();
      return false;
   }
   return true;   
} 