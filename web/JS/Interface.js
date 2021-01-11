// LEFT COLUMN

$(".list-category").not(".showCategory").slideUp();
$(".category-tag").click(function (event) {
  $(this).next().slideToggle();
  $(this).find(".icon").toggleClass("fa-minus");
  $(this).find(".icon").toggleClass("fa-plus");
});

// END Left Column
$(".btnPurchase").slideUp();
$(".items").hover(function () {
  $(this).find(".btnPurchase").stop(true,true).slideToggle();
});
//  filter mobile
let fiMo = $(".filter-mobile");
fiMo.hide();
$(".btn-soft-mobile").click(function () {
  fiMo.fadeIn("slow");
});
$(".closeFilterMobile").click(function () {
  fiMo.fadeOut("slow");
});

$(window).resize(() => {
  console.log($(window).width());
  if ($(window).width() >  1440) {
    fiMo.fadeOut();
  }
});
// End filter mobile

//item hover

//end item hover



