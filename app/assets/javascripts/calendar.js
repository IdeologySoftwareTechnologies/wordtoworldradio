$(window).load(function() { 

  $('#search_box').glDatePicker(
      {
          showAlways: true,
          allowMonthSelect: true,
          allowYearSelect: true,
          prevArrow: '\u25c4',
          nextArrow: '\u25ba',
           onClick: function(target, cell, date, data) {
                     target.val(date.getFullYear() +'-'+
                      (date.getMonth()+1) +'-'+
                      date.getDate());
                      if(data != null) {
                      alert(data.message + '\n' + date) 
                    } +  $('#search_form').submit()    
                 }
           //  cssName: 'flatwhite'
          // cssName: 'darkneon'
       });

   });