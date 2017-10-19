// function getimage() {
  // var findimage = document.getElementById('profile_photo')
//   // $.ajax({
//     type: 'GET',
      // console.log("text",findimage);
//     url: imageArray[i],
//     dataType: 'image/jpg',
//     async: true,
//     success: function (data) {
//         $("#" + i).attr("src", 'data:image/png;base64,'+data);
//     }
// // }


var findimage;
    function onload() {
        findimage = document.getElementById('profile_photo');
    }
    function getimage(){
        console.log(findimage);
    }
