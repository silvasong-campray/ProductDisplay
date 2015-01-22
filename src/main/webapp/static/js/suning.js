//jquery插件把表单序列化成json格式的数据start 
(function($){
    $.fn.serializeJson=function(){
        var serializeObj={};
        var array=this.serializeArray();
        var str=this.serialize();
        $(array).each(function(){
            if(serializeObj[this.name]){
                if($.isArray(serializeObj[this.name])){
                    serializeObj[this.name].push(this.value);
                }else{
                    serializeObj[this.name]=[serializeObj[this.name],this.value];
                }
            }else{
                serializeObj[this.name]=this.value;
            }
        });
        return serializeObj;
    };
})(jQuery);

var rootURI="/";
var Suning = function () {
	var oTable;
	var selected = [];
	var handleTable = function () {				
		var table=$('#suning_table');
		 oTable = table.dataTable({
			"lengthChange":false,
        	"filter":true,
        	"sort":false,
        	"info":true,
        	"processing":true,
        	"scrollX":"100%",
           	"scrollXInner":"100%",
            "displayLength": 10,
            "dom": "t<'row'<'col-md-6'i><'col-md-6'p>>",
            "columnDefs": [
                {                	
                	'targets':-1,
                	'data':null,//定义列名
                	'render':function(data,type,row){
                    	return '<div class="actions"><a  class="btn btn-sm dark" data-toggle="modal" href="#view" id="product_details">View</a></div>';
                    },
                    'class':'center'
                }
            ],
            "columns": [
               
	           { title: "PartNumber",   data: "partNumber"  },
	           { title: "Name",   data: "productName" },
	           { title: "NetPrice",  'render':function(data,type,row){
	        	   	return "¥"+row.netPrice;
	           } },
	           { title: "PromotionPrice",  'render':function(data,type,row){
	        	   	return "¥"+row.promotionPrice;
	           } },
	           { title: "Vendor",    data: "vendorName" },
	           { title: "Category", data: "productCatagory"},
	           { title: "Url", 'render':function(data,type,row){
	        	   
                   return '<div class="actions"><a  class="btn btn-sm dark" data-toggle="modal"  href="'+row.productLink+'"  target="_blank">OPEN</a></div>';
               }},
	          
	           { title: "Action" ,"class":"center"}
	        ],
	        "serverSide": true,
	        "serverMethod": "GET",
	        "ajaxSource": rootURI+"/product/suning_list?rand="+Math.random(),
	        "fnDrawCallback":function(oSetting){
	        	selected=[];
	        }
		});		
		 
		table.on('click', '#product_details',function(){
			   var imgs = [];
			   var data = oTable.api().row($(this).parents('tr')).data();
	           $('#view').find('h1').text(data.productName);
	           $('#view').find('.price').find('strong').text("¥"+data.promotionPrice);
	           $('#view').find('.price').find('span').text("¥"+data.netPrice);
	           $('#Description').find('p').text(data.productParam);
	           $('#view').find('.product-page-options:eq(0)').find('span').text(data.vendorName);
	           $('#view').find('.product-page-options:eq(1)').find('.pull-left:eq(0)').find('span').text(data.partNumber);
	           $('#view').find('.product-page-options:eq(1)').find('.pull-left:eq(1)').find('span').text(data.productCatagory);
	           
	           imgs=data.productImage.substring(0,data.productImage.length-1).split("#");
	           var str = '<ul class="aa">';
	           $.each(imgs,function(i,value){
	        	   str+='<li class="aa"><a target="_blank"><img src="'+value+'"></a></li>'
	           });
	           str+='</ul>';
	           $('#view').find('.slider').empty();
	           $('#view .slider').append(str);
	           $(".slider").yxMobileSlider({
		   			width : 340,
		   			height : 450,
		   			during : 3000
		   		   });
	          $(window).trigger("resize");
        });
		
		
	    
		
		$('#category-one').on('change',function(){
			var jsonData=$('#searchForm').serializeJson();
			var jsonDataStr=JSON.stringify(jsonData);			
			oTable.fnFilter(jsonDataStr);
			var category = [];
			$.ajax({
				"url": rootURI+"/product/suning_category?rand="+Math.random(),
				"type": 'POST',
				"data":{key1:$(this).val(),
					    flag:1
					    },
				"success": function (data,status) { 
					if(status == "success"){
						var obj = JSON.parse(data);
						category= obj.category;
						var html = '<option value="" selected="selected">所有</option>';
						$.each(category,function(key,value) {
							if(!(value == '所有')){
								html +='<option value="'+value+'">'+value+'</option>';
							}
							
				         });
						$('#category-two').empty();
						$('#category-two').append(html);
						$('#category-three').empty();
						$('#category-three').append('<option value="" selected="selected">所有</option>');
						$('.bs-select').selectpicker('refresh');
					}
				},
				"error":function(XMLHttpRequest, textStatus, errorThrown){
	            	 alert(errorThrown);
	             }
				
			})
	    });
		$('#category-two').on('change',function(){
			var jsonData=$('#searchForm').serializeJson();
			var jsonDataStr=JSON.stringify(jsonData);			
			oTable.fnFilter(jsonDataStr);
			var category = [];
			$.ajax({
				"url": rootURI+"/product/suning_category?rand="+Math.random(),
				"type": 'POST',
				 
				"data":{
					    key1:$('#category-one').val(),
					    key2:$(this).val(),
					    flag:2
					    },
				"success": function (data,status) { 
					if(status == "success"){
						var obj = JSON.parse(data);
						category= obj.category;
						var html = '<option value="" selected="selected">所有</option>';
						$.each(category,function(key,value) {
							if(!(value =='所有')){
								html +='<option value="'+value+'">'+value+'</option>';
							}
				         });
						$('#category-three').empty();
						$('#category-three').append(html);
						$('.bs-select').selectpicker('refresh');
					}
				},
				"error":function(XMLHttpRequest, textStatus, errorThrown){
	            	 alert(errorThrown);
	             }
				
			})
	    });
		
		$('#category-three').on('change',function(){
			var jsonData=$('#searchForm').serializeJson();
			var jsonDataStr=JSON.stringify(jsonData);			
			oTable.fnFilter(jsonDataStr);
		});
		
		$('input:radio[name=vendorName]').on('change',function(){
			var jsonData=$('#searchForm').serializeJson();
			var jsonDataStr=JSON.stringify(jsonData);			
			oTable.fnFilter(jsonDataStr);
		});
			
		
		
		/* handle show/hide columns*/
        var tableColumnToggler = $('#column_toggler');		
		$('input[type="checkbox"]', tableColumnToggler).change(function () {
		    /* Get the DataTables object again - this is not a recreation, just a get of the object */
		    var iCol = parseInt($(this).attr("data-column"));
		    var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
		    oTable.fnSetColumnVis(iCol, (bVis ? false : true));
		});
        
        
	};
	
	 var handleBootstrapSelect = function() {
	        $('.bs-select').selectpicker({
	            iconBase: 'fa',
	            tickIcon: 'fa-check'
	        });
	    }
	 
	 var searchSubmit = function(){
		
				var jsonData=$('#searchForm').serializeJson();
				var jsonDataStr=JSON.stringify(jsonData);			
				oTable.fnFilter(jsonDataStr);
				return false;
			
	 }
	 
	 var searchValidation = function() {
	        var form = $('#searchForm');
	        var errorDiv = $('.alert-danger', form);            
	        form.validate({
	            errorElement: 'span', //default input error message container
	            errorPlacement: function(error, element) {
	            	error.appendTo(element.parent().parent());  
	            },
	            errorClass: 'help-block help-block-error', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            ignore: "",  // validate all fields including form hidden input                
	            rules: {
	            	price_from:{
	            		number:true
	            		
	            	},
	            	price_to:{
	            		number:true,
	            	}
	            },
	           invalidHandler: function (event, validator) { //display error alert on form submit              
	                errorDiv.show();                    
	            },

	                highlight: function (element) { // hightlight error inputs
	                    $(element).closest('.form-group').addClass('has-error'); // set error class to the control group
	                },

	                unhighlight: function (element) { // revert the change done by hightlight
	                    $(element).closest('.form-group').removeClass('has-error'); // set error class to the control group
	                },

	            success: function (label) {
	                label.closest('.form-group').removeClass('has-error'); // set success class to the control group
	            },
	            onfocusout:function(element){
	            	$(element).valid();
	            },
	            submitHandler: function (form) { 
	            	errorDiv.hide();
	            	searchSubmit();
	            }
	        });
	    };
	
	 
	//提示信息处理方法（是在页面中指定位置显示提示信息的方式）
	var handleAlerts = function(msg,msgType,position) {         
        Metronic.alert({
            container: position, // alerts parent container(by default placed after the page breadcrumbs)
            place: "prepent", // append or prepent in container 
            type: msgType,  // alert's type (success, danger, warning, info)
            message: msg,  // alert's message
            close: true, // make alert closable
            reset: true, // close all previouse alerts first
            focus: false, // auto scroll to the alert after shown
            closeInSeconds: 10, // auto close after defined seconds, 0 never close
            icon: "warning" // put icon before the message, use the font Awesone icon (fa-[*])
        });        

    };
  
    return {
        //main function to initiate the module
        init: function (rootPath) {
        	rootURI=rootPath;
        	handleTable();  
        	handleBootstrapSelect(); 
        	searchValidation();
        	
        }

    };

}();
