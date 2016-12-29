// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require cocoon
//= fileinput
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/*
$(function() {
  $("#orders th a, #orders .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#orders_search").keyup(function() {
    $.get($("#orders_search").attr("action"), $("#orders_search").serialize(), null, "script");
    return false;
  });
});
*/

$(document).on("keyup", "#orders_search", function(){
       $.get($("#orders_search").attr("action"), $("#orders_search").serialize(), null, "script");
       return false;
   });

$(document).on("keyup", "#customers_search", function(){
          $.get($("#customers_search").attr("action"), $("#customers_search").serialize(), null, "script");
          return false;
  });
$(document).on("keyup", "#runners_search", function(){
            $.get($("#runners_search").attr("action"), $("#runners_search").serialize(), null, "script");
            return false;
  });
$(document).on("keyup", "#chefs_search", function(){
              $.get($("#chefs_search").attr("action"), $("#chefs_search").serialize(), null, "script");
              return false;
  });
$(document).on("keyup", "#items_search", function(){
              $.get($("#items_search").attr("action"), $("#items_search").serialize(), null, "script");
              return false;
});
