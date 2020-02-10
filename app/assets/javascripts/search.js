// $(document).on('turbolinks:load', function(){
//   const inputForm = $('.searching-form');
//   const url = location.href;
//   const searchResult = $('.result ul');

//   function builtHTML(word){
//     let html = `
//     <li>${word.letter}</li>
//     `
//     searchResult.append(html);
//  }

//   function NoResult(message){
//     let html = `
//     <li>${message}</li>
//     `
//     searchResult.append(html);
//    }



$(function() {
  $(".searching-form").on("keyup", function() {
    var input = $(".searching-form").val();



    $.ajax({
      type: 'get',
      url: '/words/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(words) {
     console.log(keyword)
    })
  });
});
    //   searchResult.empty();
    //   if (words.length !== 0) {
    //     words.forEach(function(word){
    //       builtHTML(word);
    //     });
    //   }
    //   else {
    //     NoResult('該当する項目はありません')
    //   }
    // })
    // .fail(function(data){
    //   alert('非同期通信に失敗しました');
    // })

  
// });