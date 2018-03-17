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
//= require jquery_ujs
//= require jquery.slimscroll.min
//= require jquery.dataTables.min
//= require dataTables.bootstrap.min
//= require app
//= require_tree .

$(document).ready(function(e) {
  // data table
  var default_number_column_sotring = $("#default_number_column_sotring").attr('data-number');
  if (typeof(default_number_column_sotring) == "undefined"){
    default_number_column_sotring = 0;
  }

  $('.adminlte2datatable').DataTable();

  //hide and unbind icon sort in table
  $(".remove-icon-sorting").removeClass('sorting_desc').removeClass('sorting').unbind();
});