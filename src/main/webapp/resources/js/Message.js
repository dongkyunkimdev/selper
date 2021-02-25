/*document.addEventListener("DOMContentLoaded", () => {
  const cancelBonuses = document.querySelector(".app-cancel-bonuses");
  const app = document.querySelector(".app");

  const toggleBtn = document.querySelectorAll(".new-mail__toggle");
  toggleBtn.forEach(element => {
    element.addEventListener("click", () => {
      document.querySelector(".new-mail").classList.toggle("active");
      document.querySelector(".new__button").classList.toggle("active");
    });
  });

  function byeCancelButton() {
    cancelBonuses.classList.toggle("app-cancel-bonuses--active");
  }




  toggleClassToApp(".bonus-dark-mode", "dark-mode", false);
  toggleClassToApp(".bonus-zoom", "bonus-zoom", true);
  toggleClassToApp(".bonus-exit", "bonus-exit", true);
  toggleClassToApp(".bonus-why-so-serious", "why-so-serious", false);
  toggleClassToApp(".bonus-russia", "bonus-russia", false);
});*/

function MovePage(url){
    // ajax option
    var ajaxOption = {
            url : url,
            async : true,
            type : "POST",
            dataType : "html",
            cache : false
    };
    
    $.ajax(ajaxOption).done(function(data){
        // url history 등록
        history.pushState(null, null, url + "gWebBoard2/message/receiveList.do" + params);
        
        // Contents 영역 삭제
        $('.preview-content scrollable__target').children().remove();
        // Contents 영역 교체
        $('.preview-content scrollable__target').html(data);
    });
}