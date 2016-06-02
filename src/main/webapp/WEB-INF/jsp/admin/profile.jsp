  <style>
 
 .btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
/*     min-width: 50%; */
/*     min-height: 5%; */
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
}
 
 </style>
   
   
<body data-spy="scroll" data-target=".subnav" data-offset="50">
     <div class="wrapper">
        <div class="container">
            


<h2>Profile of Admin</h2>
<p/>


<div id="general-message"></div>
<div class="tabbable">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#1" data-toggle="tab">General</a></li>
   		<li><a href="#2" data-toggle="tab">Personal</a></li>
        <li><a href="#3" data-toggle="tab">Payments</a></li>
    </ul>
    
    
    <!-- Add Persona JSP Fragment -->
	<%@ include file="../admin/fragment/personal.jsp"%> 
    

</div>






<!-- 
<script type="text/javascript">
    $("#save-member-profile").bind("click", function (e) {
        e.preventDefault();
        var profileFiedlInfo = new Array();
        var TimeZoneID = $("#member-time-zone").val();

        $(".save-settings").button('loading')

        $(".profile-field").each(function (e) {
           var profileField = {};

           if ($(this).attr("type") == "checkbox")
               profileField = { ID: $(this).attr("id").replace("profile-field-", ""), Value: $(this).is(":checked") };
           else
               profileField = { ID: $(this).attr("id").replace("profile-field-", ""), Value: $(this).val() != null ? $(this).val().toString() : ""};
            
            profileFiedlInfo.push(profileField);
        });

         $('div[id*="profile-radio-field-"]').each(function (e) {
              var fieldId = $(this).attr("id").replace("profile-radio-field-", "")
              
              var profileField = {
                  ID: fieldId,
                  Value: $(this).find('input:checked').val()
              }
              
              profileFiedlInfo.push(profileField);
         });

        $.ajax({
            type: "POST",
            url:  "/Admin/Profile/SaveProfile",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({FieldInfo: profileFiedlInfo, TimeZoneID : TimeZoneID}),
            cache: false,
            success: function (data) {
                  $(".save-settings").button('reset')

                  if(data.MemberFields != null && data.MemberFields.length > 0)
                  {
                        for(var i=0; i < data.MemberFields.length;i++)
                        {
                            var element = data.MemberFields[i];
                            if(element.Type == 6)
                            {
                               if(element.Value == "true")
                                    $("#"+element.Name).attr('checked', true);
                               else
                                    $("#"+element.Name).attr('checked', false);
                            }else  if(element.Type == 7)
                            {
                                $('[name='+element.Name+']').prop('checked',false);
                                $('[name="'+element.Name+'"][value=\"'+element.Value+'\"]').prop('checked',true);
                            }
                            else
                            {
                               $("#"+element.Name).val(element.Value);
                            }
                        }
                  }
                  
                  if(data.TimeZoneID)
                  {
                    $("#member-time-zone").val(data.TimeZoneID);
                  }

                  if(data.Message != null && data.Message.length > 0)
                  {
                    $("#general-message").html(data.Message);
                  }

                 setTimeout(function (e) {
                   $.scrollTo($("body"), { duration: 900, axis: 'y' });
                 }, 500);
            },
            error: function (xhr, textStatus, errorThrown) {
                App.DialogError(xhr, textStatus, errorThrown);
                $(".save-settings").button('reset')
            }
        });


        return false;
    });
</script>
-->



   </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>

</body>
</html>
