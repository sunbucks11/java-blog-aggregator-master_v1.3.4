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
        <li class="active">
            <a href="#1" data-toggle="tab">General</a>
        </li>
              <li><a href="#2" data-toggle="tab">Personal</a></li>
              <li><a href="#3" data-toggle="tab">Payments</a></li>

        
    </ul>
    <form class="form-horizontal" method="post" id="settings-form" style="width:100%" action="~">
    <div class="tab-content">
        <div class="tab-pane fade active in" id="1">
    		<legend>General</legend>            
            <br/> 
            <div class="row">
                <div class="col-md-6">




<div id="avatar-notify-message"></div>
<div class="row">


<!--     <div style="display:inline-block;width:110px;vertical-align:text-top" class="col-md-2">
                <img class="img-circle" src="/Avatar/ozj15c6vx0smonb6n6mlgeve.jpg" id="member-avatar" style="width:100px;height:100px;" />

    </div> -->
    
    
    
<!--  <div style="padding-top:0px;padding-bottom:5px;display:inline-block;vertical-align:text-top" id="avatar-control" class="col-md-8">
        <div style="display:inline-block;vertical-align:text-top"><b style="font-size:15px">Upload a Photo</b>&nbsp;</div>
        <div id="avatr-uploading-in-progess" class="glyphicon glyphicon-refresh glyphicon-refresh-animate" style="display:none;vertical-align:text-top"></div>
        <p style="margin-top:5px">You can upload a JPG, GIF or PNG file. File size limit is about 4 MB.</p>
        <div class="btn btn-default btn-info btn-sm" id="upload-avatar" style="margin-top:2px">Upload Photo</div>
        <div class="btn btn-default btn-danger btn-sm" id="reset-avatar" style="margin-top:2px">Reset Photo</div>
        <p class="muted"></p><input type="hidden" id="avatar-panel-warning-message" value="Only images are allowed." />

    </div> -->
  
 			        <div class="control-group">
                       <!-- <label class="control-label">Instance Name</label> -->
			          <img src="http://www.onlinetestpro.co.uk/images/Admin.png" alt="Admin" height="100" width="100">
			        </div>
    
 	<div style="float: left; margin-left: 150px; margin-top:-100px; display: inline-block;">
		<b>Upload a Photo</b><br>
		<p>You can upload a JPG, GIF or PNG file. File size limit is about 4MB.</p>
		<span class="btn btn-info btn-file"> Upload Photo <input type="file"></span>
		<span class="btn btn-danger btn-file"> Reset Photo <input type="file"></span>
	</div>     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</div>

<!-- 
<script type="text/javascript">
  $(document).ready(function() {  
    App.InitAvatarUpload($('#upload-avatar'), '/', 'upload-avatar', '/Admin/Profile/UploadAvatarImage', '/Admin/Profile/ResizeAvatarDialog',1);

    $("#reset-avatar").bind("click", function (e) {
        if (confirm('Are yo sure to reset avatar image?')) {
            App.ResetAvavtarImage('/Admin/Profile/ResetAvatarImage',1);
        }
    });
});
</script>    
-->

          
<p/>
<div class="form-group">
    <label class="control-label" for="member-time-zone">Your Time Zone</label>
        <select id="member-time-zone" class="form-control">
            <option value="">Please, select your time zone</option>
                    <option value="Dateline Standard Time">(UTC-12:00) International Date Line West</option>
                    <option value="UTC-11">(UTC-11:00) Coordinated Universal Time-11</option>
                    <option value="Hawaiian Standard Time">(UTC-10:00) Hawaii</option>
                    <option value="Alaskan Standard Time">(UTC-09:00) Alaska</option>
                    <option value="Pacific Standard Time (Mexico)">(UTC-08:00) Baja California</option>
                    <option value="Pacific Standard Time">(UTC-08:00) Pacific Time (US &amp; Canada)</option>
                    <option value="US Mountain Standard Time">(UTC-07:00) Arizona</option>
                    <option value="Mountain Standard Time (Mexico)">(UTC-07:00) Chihuahua, La Paz, Mazatlan</option>
                    <option value="Mountain Standard Time">(UTC-07:00) Mountain Time (US &amp; Canada)</option>
                    <option value="Central America Standard Time">(UTC-06:00) Central America</option>
                    <option value="Central Standard Time">(UTC-06:00) Central Time (US &amp; Canada)</option>
                    <option value="Easter Island Standard Time">(UTC-06:00) Easter Island</option>
                    <option value="Central Standard Time (Mexico)">(UTC-06:00) Guadalajara, Mexico City, Monterrey</option>
                    <option value="Canada Central Standard Time">(UTC-06:00) Saskatchewan</option>
                    <option value="SA Pacific Standard Time">(UTC-05:00) Bogota, Lima, Quito, Rio Branco</option>
                    <option value="Eastern Standard Time (Mexico)">(UTC-05:00) Chetumal</option>
                    <option value="Eastern Standard Time">(UTC-05:00) Eastern Time (US &amp; Canada)</option>
                    <option value="Haiti Standard Time">(UTC-05:00) Haiti</option>
                    <option value="US Eastern Standard Time">(UTC-05:00) Indiana (East)</option>
                    <option value="Venezuela Standard Time">(UTC-04:30) Caracas</option>
                    <option value="Paraguay Standard Time">(UTC-04:00) Asuncion</option>
                    <option value="Atlantic Standard Time">(UTC-04:00) Atlantic Time (Canada)</option>
                    <option value="Central Brazilian Standard Time">(UTC-04:00) Cuiaba</option>
                    <option value="SA Western Standard Time">(UTC-04:00) Georgetown, La Paz, Manaus, San Juan</option>
                    <option value="Pacific SA Standard Time">(UTC-04:00) Santiago</option>
                    <option value="Newfoundland Standard Time">(UTC-03:30) Newfoundland</option>
                    <option value="E. South America Standard Time">(UTC-03:00) Brasilia</option>
                    <option value="SA Eastern Standard Time">(UTC-03:00) Cayenne, Fortaleza</option>
                    <option value="Argentina Standard Time">(UTC-03:00) City of Buenos Aires</option>
                    <option value="Greenland Standard Time">(UTC-03:00) Greenland</option>
                    <option value="Montevideo Standard Time">(UTC-03:00) Montevideo</option>
                    <option value="Bahia Standard Time">(UTC-03:00) Salvador</option>
                    <option value="UTC-02">(UTC-02:00) Coordinated Universal Time-02</option>
                    <option value="Mid-Atlantic Standard Time">(UTC-02:00) Mid-Atlantic - Old</option>
                    <option value="Azores Standard Time">(UTC-01:00) Azores</option>
                    <option value="Cape Verde Standard Time">(UTC-01:00) Cabo Verde Is.</option>
                    <option value="Morocco Standard Time">(UTC) Casablanca</option>
                    <option value="UTC">(UTC) Coordinated Universal Time</option>
                    <option value="GMT Standard Time">(UTC) Dublin, Edinburgh, Lisbon, London</option>
                    <option value="Greenwich Standard Time">(UTC) Monrovia, Reykjavik</option>
                    <option value="W. Europe Standard Time">(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</option>
                    <option value="Central Europe Standard Time">(UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague</option>
                    <option value="Romance Standard Time">(UTC+01:00) Brussels, Copenhagen, Madrid, Paris</option>
                    <option value="Central European Standard Time">(UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb</option>
                    <option value="W. Central Africa Standard Time">(UTC+01:00) West Central Africa</option>
                    <option value="Namibia Standard Time">(UTC+01:00) Windhoek</option>
                    <option value="Jordan Standard Time">(UTC+02:00) Amman</option>
                    <option value="GTB Standard Time">(UTC+02:00) Athens, Bucharest</option>
                    <option value="Middle East Standard Time">(UTC+02:00) Beirut</option>
                    <option value="Egypt Standard Time">(UTC+02:00) Cairo</option>
                    <option value="Syria Standard Time">(UTC+02:00) Damascus</option>
                    <option value="E. Europe Standard Time">(UTC+02:00) E. Europe</option>
                    <option value="South Africa Standard Time">(UTC+02:00) Harare, Pretoria</option>
                    <option value="FLE Standard Time" selected="selected">(UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius</option>
                    <option value="Turkey Standard Time">(UTC+02:00) Istanbul</option>
                    <option value="Israel Standard Time">(UTC+02:00) Jerusalem</option>
                    <option value="Kaliningrad Standard Time">(UTC+02:00) Kaliningrad</option>
                    <option value="Libya Standard Time">(UTC+02:00) Tripoli</option>
                    <option value="Arabic Standard Time">(UTC+03:00) Baghdad</option>
                    <option value="Arab Standard Time">(UTC+03:00) Kuwait, Riyadh</option>
                    <option value="Belarus Standard Time">(UTC+03:00) Minsk</option>
                    <option value="Russian Standard Time">(UTC+03:00) Moscow, St. Petersburg, Volgograd</option>
                    <option value="E. Africa Standard Time">(UTC+03:00) Nairobi</option>
                    <option value="Astrakhan Standard Time">(UTC+04:00) Astrakhan, Ulyanovsk</option>
                    <option value="Iran Standard Time">(UTC+03:30) Tehran</option>
                    <option value="Arabian Standard Time">(UTC+04:00) Abu Dhabi, Muscat</option>
                    <option value="Azerbaijan Standard Time">(UTC+04:00) Baku</option>
                    <option value="Russia Time Zone 3">(UTC+04:00) Izhevsk, Samara</option>
                    <option value="Mauritius Standard Time">(UTC+04:00) Port Louis</option>
                    <option value="Georgian Standard Time">(UTC+04:00) Tbilisi</option>
                    <option value="Caucasus Standard Time">(UTC+04:00) Yerevan</option>
                    <option value="Afghanistan Standard Time">(UTC+04:30) Kabul</option>
                    <option value="West Asia Standard Time">(UTC+05:00) Ashgabat, Tashkent</option>
                    <option value="Ekaterinburg Standard Time">(UTC+05:00) Ekaterinburg</option>
                    <option value="Pakistan Standard Time">(UTC+05:00) Islamabad, Karachi</option>
                    <option value="India Standard Time">(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi</option>
                    <option value="Sri Lanka Standard Time">(UTC+05:30) Sri Jayawardenepura</option>
                    <option value="Nepal Standard Time">(UTC+05:45) Kathmandu</option>
                    <option value="Central Asia Standard Time">(UTC+06:00) Astana</option>
                    <option value="Bangladesh Standard Time">(UTC+06:00) Dhaka</option>
                    <option value="N. Central Asia Standard Time">(UTC+06:00) Novosibirsk</option>
                    <option value="Altai Standard Time">(UTC+07:00) Barnaul, Gorno-Altaysk</option>
                    <option value="Myanmar Standard Time">(UTC+06:30) Yangon (Rangoon)</option>
                    <option value="SE Asia Standard Time">(UTC+07:00) Bangkok, Hanoi, Jakarta</option>
                    <option value="North Asia Standard Time">(UTC+07:00) Krasnoyarsk</option>
                    <option value="China Standard Time">(UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi</option>
                    <option value="North Asia East Standard Time">(UTC+08:00) Irkutsk</option>
                    <option value="Singapore Standard Time">(UTC+08:00) Kuala Lumpur, Singapore</option>
                    <option value="W. Australia Standard Time">(UTC+08:00) Perth</option>
                    <option value="Taipei Standard Time">(UTC+08:00) Taipei</option>
                    <option value="Ulaanbaatar Standard Time">(UTC+08:00) Ulaanbaatar</option>
                    <option value="Transbaikal Standard Time">(UTC+09:00) Chita</option>
                    <option value="North Korea Standard Time">(UTC+08:30) Pyongyang</option>
                    <option value="Tokyo Standard Time">(UTC+09:00) Osaka, Sapporo, Tokyo</option>
                    <option value="Korea Standard Time">(UTC+09:00) Seoul</option>
                    <option value="Yakutsk Standard Time">(UTC+09:00) Yakutsk</option>
                    <option value="Cen. Australia Standard Time">(UTC+09:30) Adelaide</option>
                    <option value="AUS Central Standard Time">(UTC+09:30) Darwin</option>
                    <option value="E. Australia Standard Time">(UTC+10:00) Brisbane</option>
                    <option value="AUS Eastern Standard Time">(UTC+10:00) Canberra, Melbourne, Sydney</option>
                    <option value="West Pacific Standard Time">(UTC+10:00) Guam, Port Moresby</option>
                    <option value="Tasmania Standard Time">(UTC+10:00) Hobart</option>
                    <option value="Magadan Standard Time">(UTC+10:00) Magadan</option>
                    <option value="Vladivostok Standard Time">(UTC+10:00) Vladivostok</option>
                    <option value="Sakhalin Standard Time">(UTC+11:00) Sakhalin</option>
                    <option value="Russia Time Zone 10">(UTC+11:00) Chokurdakh</option>
                    <option value="Central Pacific Standard Time">(UTC+11:00) Solomon Is., New Caledonia</option>
                    <option value="Russia Time Zone 11">(UTC+12:00) Anadyr, Petropavlovsk-Kamchatsky</option>
                    <option value="New Zealand Standard Time">(UTC+12:00) Auckland, Wellington</option>
                    <option value="UTC+12">(UTC+12:00) Coordinated Universal Time+12</option>
                    <option value="Fiji Standard Time">(UTC+12:00) Fiji</option>
                    <option value="Kamchatka Standard Time">(UTC+12:00) Petropavlovsk-Kamchatsky - Old</option>
                    <option value="Tonga Standard Time">(UTC+13:00) Nuku&#39;alofa</option>
                    <option value="Samoa Standard Time">(UTC+13:00) Samoa</option>
                    <option value="Line Islands Standard Time">(UTC+14:00) Kiritimati Island</option>
        </select>

    <p class="muted">Will be applied to datetime fields</p>
</div>

<div class="form-group">
    <label class="control-label" for="">Short name: Account ID</label>
    <input type="text" readonly class="input-xlarge app-settings form-control" maxlength="64" id="" name="" value="Admin" />
    <p class="muted"></p>
</div>

<div class="form-group">
    <label class="control-label" for="">Email</label>
    <input type="text" readonly class="input-xlarge app-settings form-control" maxlength="54" id="" name="" value="admin@demo.com" />
    <p class="muted"></p>
</div>
                 
                </div>
            </div>
        </div>
              <div class="tab-pane fade in" id="2">
                <legend>Personal</legend>
                <div class="col-md-6'">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-63">First name
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-63" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-63" style="width:97%;color:black" maxlength="64" value="First name" />
            <div class="muted"><p>First name as in passport</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-64">Family name
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-64" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-64" style="width:97%;color:black" maxlength="64" value="Family name" />
            <div class="muted"><p>Family name  as in passport</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-66">Gender
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-66" style="display:inline-block;width:100%">
                    <select style="width:100%" id="profile-field-66" class="profile-field form-control">
                        <option value="">Please select your option</option>
                                <option value="Female">Female</option>
                                <option selected="selected" value="Male">Male</option>
                    </select>
            <div class="muted"><p>Please select your gender</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-67">Country
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-67" style="display:inline-block;width:100%">
                    <select style="width:100%" id="profile-field-67" class="profile-field form-control">
                        <option value="">Please select your option</option>
                                <option value="Afghanistan">Afghanistan</option>
                                <option value="Anguilla">Anguilla</option>
                                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                <option value="United Arab Emirates">United Arab Emirates</option>
                                <option value="Aland Islands">Aland Islands</option>
                                <option value="Albania">Albania</option>
                                <option value="Algeria">Algeria</option>
                                <option value="American Samoa">American Samoa</option>
                                <option value="Andorra">Andorra</option>
                                <option value="Angola">Angola</option>
                                <option value="Antarctica">Antarctica</option>
                                <option value="Argentina">Argentina</option>
                                <option value="Armenia">Armenia</option>
                                <option value="Aruba">Aruba</option>
                                <option value="Australia">Australia</option>
                                <option value="Austria">Austria</option>
                                <option value="Azerbaijan">Azerbaijan</option>
                                <option value="Bahrain">Bahrain</option>
                                <option value="Bangladesh">Bangladesh</option>
                                <option value="Barbados">Barbados</option>
                                <option value="Belarus">Belarus</option>
                                <option value="Belgium">Belgium</option>
                                <option value="Belize">Belize</option>
                                <option value="Benin">Benin</option>
                                <option value="Bermuda">Bermuda</option>
                                <option value="Bhutan">Bhutan</option>
                                <option value="Bolivia">Bolivia</option>
                                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                <option value="Botswana">Botswana</option>
                                <option value="Bouvet Island">Bouvet Island</option>
                                <option value="Brazil">Brazil</option>
                                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                <option value="British Virgin Islands">British Virgin Islands</option>
                                <option value="Brunei">Brunei</option>
                                <option value="Bulgaria">Bulgaria</option>
                                <option value="Burkina Faso">Burkina Faso</option>
                                <option value="Burma">Burma</option>
                                <option value="Burundi">Burundi</option>
                                <option value="Cambodia">Cambodia</option>
                                <option value="Cameroon">Cameroon</option>
                                <option value="Canada">Canada</option>
                                <option value="Cape Verde">Cape Verde</option>
                                <option value="Cayman Islands">Cayman Islands</option>
                                <option value="Central African Republic">Central African Republic</option>
                                <option value="Chad">Chad</option>
                                <option value="Chile">Chile</option>
                                <option value="China">China</option>
                                <option value="Christmas Island">Christmas Island</option>
                                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                <option value="Colombia">Colombia</option>
                                <option value="Comoros">Comoros</option>
                                <option value="Cook Islands">Cook Islands</option>
                                <option value="Costa Rica">Costa Rica</option>
                                <option value="Croatia">Croatia</option>
                                <option value="Cuba">Cuba</option>
                                <option value="Cyprus">Cyprus</option>
                                <option value="Czech Republic">Czech Republic</option>
                                <option value="Democratic Republic of the Congo">Democratic Republic of the Congo</option>
                                <option value="Denmark">Denmark</option>
                                <option value="Djibouti">Djibouti</option>
                                <option value="Dominica">Dominica</option>
                                <option value="Dominican Republic">Dominican Republic</option>
                                <option value="Ecuador">Ecuador</option>
                                <option value="Egypt">Egypt</option>
                                <option value="El Salvador">El Salvador</option>
                                <option value="Equatorial Guinea">Equatorial Guinea</option>
                                <option value="Eritrea">Eritrea</option>
                                <option value="Estonia">Estonia</option>
                                <option value="Ethiopia">Ethiopia</option>
                                <option value="Falkland Islands">Falkland Islands</option>
                                <option value="Faroe Islands">Faroe Islands</option>
                                <option value="Fiji">Fiji</option>
                                <option value="Finland">Finland</option>
                                <option value="France">France</option>
                                <option value="French Guiana">French Guiana</option>
                                <option value="French Polynesia">French Polynesia</option>
                                <option value="French Southern and Antarctic Lands">French Southern and Antarctic Lands</option>
                                <option value="Gabon">Gabon</option>
                                <option value="Georgia">Georgia</option>
                                <option value="Germany">Germany</option>
                                <option value="Ghana">Ghana</option>
                                <option value="Gibraltar">Gibraltar</option>
                                <option value="Greece">Greece</option>
                                <option value="Greenland">Greenland</option>
                                <option value="Grenada">Grenada</option>
                                <option value="Guadeloupe">Guadeloupe</option>
                                <option value="Guam">Guam</option>
                                <option value="Guatemala">Guatemala</option>
                                <option value="Guernsey">Guernsey</option>
                                <option value="Guinea">Guinea</option>
                                <option value="Guinea-Bissau">Guinea-Bissau</option>
                                <option value="Guyana">Guyana</option>
                                <option value="Haiti">Haiti</option>
                                <option value="Heard Island and McDonald Islands">Heard Island and McDonald Islands</option>
                                <option value="Honduras">Honduras</option>
                                <option value="Hong Kong">Hong Kong</option>
                                <option value="Hungary">Hungary</option>
                                <option value="Iceland">Iceland</option>
                                <option value="India">India</option>
                                <option value="Indonesia">Indonesia</option>
                                <option value="Iran">Iran</option>
                                <option value="Iraq">Iraq</option>
                                <option value="Ireland">Ireland</option>
                                <option value="Isle of Man">Isle of Man</option>
                                <option value="Israel">Israel</option>
                                <option value="Italy">Italy</option>
                                <option value="Ivory Coast">Ivory Coast</option>
                                <option value="Jamaica">Jamaica</option>
                                <option value="Japan">Japan</option>
                                <option value="Jersey">Jersey</option>
                                <option value="Jordan">Jordan</option>
                                <option value="Kazakhstan">Kazakhstan</option>
                                <option value="Kenya">Kenya</option>
                                <option value="Kiribati">Kiribati</option>
                                <option value="Kuwait">Kuwait</option>
                                <option value="Kyrgyzstan">Kyrgyzstan</option>
                                <option value="Laos">Laos</option>
                                <option value="Latvia">Latvia</option>
                                <option value="Lebanon">Lebanon</option>
                                <option value="Lesotho">Lesotho</option>
                                <option value="Liberia">Liberia</option>
                                <option value="Libya">Libya</option>
                                <option value="Liechtenstein">Liechtenstein</option>
                                <option value="Lithuania">Lithuania</option>
                                <option value="Luxembourg">Luxembourg</option>
                                <option value="Macau">Macau</option>
                                <option value="Macedonia">Macedonia</option>
                                <option value="Madagascar">Madagascar</option>
                                <option value="Malawi">Malawi</option>
                                <option value="Malaysia">Malaysia</option>
                                <option value="Maldives">Maldives</option>
                                <option value="Mali">Mali</option>
                                <option value="Malta">Malta</option>
                                <option value="Marshall Islands">Marshall Islands</option>
                                <option value="Martinique">Martinique</option>
                                <option value="Mauritania">Mauritania</option>
                                <option value="Mauritius">Mauritius</option>
                                <option value="Mayotte">Mayotte</option>
                                <option value="Mexico">Mexico</option>
                                <option value="Micronesia">Micronesia</option>
                                <option value="Moldova">Moldova</option>
                                <option value="Monaco">Monaco</option>
                                <option value="Mongolia">Mongolia</option>
                                <option value="Montenegro">Montenegro</option>
                                <option value="Montserrat">Montserrat</option>
                                <option value="Morocco">Morocco</option>
                                <option value="Mozambique">Mozambique</option>
                                <option value="Namibia">Namibia</option>
                                <option value="Nauru">Nauru</option>
                                <option value="Nepal">Nepal</option>
                                <option value="Netherlands">Netherlands</option>
                                <option value="Netherlands Antilles">Netherlands Antilles</option>
                                <option value="New Caledonia">New Caledonia</option>
                                <option value="New Zealand">New Zealand</option>
                                <option value="Nicaragua">Nicaragua</option>
                                <option value="Niger">Niger</option>
                                <option value="Nigeria">Nigeria</option>
                                <option value="Niue">Niue</option>
                                <option value="Norfolk Island">Norfolk Island</option>
                                <option value="North Korea">North Korea</option>
                                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                <option value="Norway">Norway</option>
                                <option value="Oman">Oman</option>
                                <option value="Pakistan">Pakistan</option>
                                <option value="Palau">Palau</option>
                                <option value="Palesinian Territory">Palesinian Territory</option>
                                <option value="Panama">Panama</option>
                                <option value="Papua New Guinea">Papua New Guinea</option>
                                <option value="Paraguay">Paraguay</option>
                                <option value="Peru">Peru</option>
                                <option value="Philippines">Philippines</option>
                                <option value="Pitcairn Islands">Pitcairn Islands</option>
                                <option value="Poland">Poland</option>
                                <option value="Portugal">Portugal</option>
                                <option value="Puerto Rico">Puerto Rico</option>
                                <option value="Qatar">Qatar</option>
                                <option value="Republic of the Congo">Republic of the Congo</option>
                                <option value="Reunion">Reunion</option>
                                <option value="Romania">Romania</option>
                                <option value="Russian Federation">Russian Federation</option>
                                <option value="Rwanda">Rwanda</option>
                                <option value="Saint Barthelemy">Saint Barthelemy</option>
                                <option value="Saint Helena">Saint Helena</option>
                                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                <option value="Saint Lucia">Saint Lucia</option>
                                <option value="Saint Martin">Saint Martin</option>
                                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                <option value="Samoa">Samoa</option>
                                <option value="San Marino">San Marino</option>
                                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                <option value="Saudi Arabia">Saudi Arabia</option>
                                <option value="Senegal">Senegal</option>
                                <option value="Serbia">Serbia</option>
                                <option value="Seychelles">Seychelles</option>
                                <option value="Sierra Leone">Sierra Leone</option>
                                <option value="Singapore">Singapore</option>
                                <option value="Slovakia">Slovakia</option>
                                <option value="Slovenia">Slovenia</option>
                                <option value="Solomon Islands">Solomon Islands</option>
                                <option value="Somalia">Somalia</option>
                                <option value="South Africa">South Africa</option>
                                <option value="South Georgia and South Sandwich Islands">South Georgia and South Sandwich Islands</option>
                                <option value="South Korea">South Korea</option>
                                <option value="Spain">Spain</option>
                                <option value="Sri Lanka">Sri Lanka</option>
                                <option value="Sudan">Sudan</option>
                                <option value="Suriname">Suriname</option>
                                <option value="Svalbard">Svalbard</option>
                                <option value="Swaziland">Swaziland</option>
                                <option value="Sweden">Sweden</option>
                                <option value="Switzerland">Switzerland</option>
                                <option value="Syria">Syria</option>
                                <option value="Taiwan">Taiwan</option>
                                <option value="Tajikistan">Tajikistan</option>
                                <option value="Tanzania">Tanzania</option>
                                <option value="Thailand">Thailand</option>
                                <option value="The Bahamas">The Bahamas</option>
                                <option value="The Gambia">The Gambia</option>
                                <option value="Timor-Leste">Timor-Leste</option>
                                <option value="Togo">Togo</option>
                                <option value="Tokelau">Tokelau</option>
                                <option value="Tonga">Tonga</option>
                                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                <option value="Tunisia">Tunisia</option>
                                <option value="Turkey">Turkey</option>
                                <option value="Turkmenistan">Turkmenistan</option>
                                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                <option value="Tuvalu">Tuvalu</option>
                                <option value="Uganda">Uganda</option>
                                <option selected="selected" value="Ukraine">Ukraine</option>
                                <option value="United Kingdom">United Kingdom</option>
                                <option value="United States">United States</option>
                                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                                <option value="Uruguay">Uruguay</option>
                                <option value="Uzbekistan">Uzbekistan</option>
                                <option value="Vanuatu">Vanuatu</option>
                                <option value="Vatican City">Vatican City</option>
                                <option value="Venezuela">Venezuela</option>
                                <option value="Vietnam">Vietnam</option>
                                <option value="Virgin Islands">Virgin Islands</option>
                                <option value="Wallis and Futuna">Wallis and Futuna</option>
                                <option value="Western Sahara">Western Sahara</option>
                                <option value="Yemen">Yemen</option>
                                <option value="Zambia">Zambia</option>
                                <option value="Zimbabwe">Zimbabwe</option>
                    </select>
            <div class="muted"><p>Select your country</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-73">District
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-73" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-73" style="width:97%;color:black" maxlength="64" value="District" />
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-68">City
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-68" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-68" style="width:97%;color:black" maxlength="64" value="City" />
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-69">Nationality
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-69" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-69" style="width:97%;color:black" maxlength="64" value="Nationality" />
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-65">Birth Date
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-65" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-65" style="width:97%;color:black" maxlength="64" value="Birth Date" />
            <div class="muted"><p>Please use the following format dd.mm.yyyy</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-70">Phone number
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-70" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-70" style="width:97%;color:black" maxlength="64" value="Phone number" />
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-71">Passport number
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-71" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-71" style="width:97%;color:black" maxlength="64" value="Passport number" />
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-77">Emergency Contact Name
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-77" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-77" style="width:97%;color:black" maxlength="64" value="Emergency" />
            <div class="muted"><p>Emergency Contact Name</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-78">Emergency Phone Number
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-78" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-78" style="width:97%;color:black" maxlength="64" value="Emergency" />
            <div class="muted"><p>Emergency Phone Number</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-79">Additional information
                            </label>                                    

<div id="profile-field-div-79" style="display:inline-block;width:100%">
                <textarea type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-79" style="width:97%; height:100px; color:black" maxlength="64"></textarea>
            <div class="muted"><p></p></div>

</div>


                        </div>
                    </div>

                  </div>                                    
              </div>         
              <div class="tab-pane fade in" id="3">
                <legend>Payments</legend>
                <div class="col-md-6'">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-85">Credit Card Number
                            </label>                                    

<div id="profile-field-div-85" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-85" style="width:97%;color:black" maxlength="64" value="1234-5678-2345-4567" />
            <div class="muted"><p>Your Credit Card Number</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-86">Bank Account
                            </label>                                    

<div id="profile-field-div-86" style="display:inline-block;width:100%">
            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-86" style="width:97%;color:black" maxlength="64" value="12346234567" />
            <div class="muted"><p>Your bank account number</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-88">Which bank do you prefer ?
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-88" style="display:inline-block;width:100%">
                    <select style="width:100%;height:110px" id="profile-field-88" size="4" class="profile-field form-control" multiple="multiple">
                                                        <option selected="selected" value="City Bank">City Bank</option>
                                <option value="New-York Bank">New-York Bank</option>
                                <option value="EU Credit">EU Credit</option>
                                <option selected="selected" value="First national Bank">First national Bank</option>
                    </select>
            <div class="muted"><p>Please select one or more values below</p></div>

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-90">Payment Period
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-90" style="display:inline-block;width:100%">
         <div id="profile-radio-field-90" style="margin-top:4px">
                <div style="display:block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-0" value="1 Month" class="profile-radio-field" checked="checked"/>
                     <span style="vertical-align: middle; margin: 0px;">1 Month</span>


                 </div>
                <div style="display:block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-1" value="6 Months" class="profile-radio-field"/>
                     <span style="vertical-align: middle; margin: 0px;"> 6 Months</span>


                 </div>
                <div style="display:block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-2" value="1 Year" class="profile-radio-field"/>
                     <span style="vertical-align: middle; margin: 0px;"> 1 Year</span>


                 </div>
        </div>                 
        <div class="muted"><p>Please select your payment period</p></div>            

</div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label" for="profile-field-89">Payment Type
                                <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                            </label>                                    

<div id="profile-field-div-89" style="display:inline-block;width:100%">
         <div id="profile-radio-field-89" style="margin-top:4px">
                <div style="display:inline-block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-0" value="Credit Card" class="profile-radio-field"/>
                     <span style="vertical-align: middle; margin: 0px;"> Credit Card</span>


                 </div>
                <div style="display:inline-block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-1" value="Western Union" class="profile-radio-field" checked="checked"/>
                     <span style="vertical-align: middle; margin: 0px;">Western Union</span>


                 </div>
                <div style="display:inline-block;padding:0px; padding-right:12px;height:24px">                 
                     <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-2" value="Bank Account Transfer" class="profile-radio-field"/>
                     <span style="vertical-align: middle; margin: 0px;"> Bank Account Transfer</span>


                 </div>
        </div>                 
        <div class="muted"><p>Please select your payment type</p></div>            

</div>


                        </div>
                    </div>

                  </div>                                    
              </div>         

        <div>
            <span style="color:red;font-size:14px">&nbsp;<b>*</b></span> - Required field<br/>&nbsp;<br/>
        </div>
    </div>
    <div class="form-actions" style="padding-top:15px;padding-bottom:15px">
		<button data-loading-text="Saving..." data-complete-text="Changes saved" name="save-member-profile" id="save-member-profile" class="btn btn-default btn-primary save-settings btn-sm">Save changes</button>
    </div>
    </form>
</div>

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
        </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>
    <footer class="container">
        <p>© Company 2012 Simple Tools - Member Role  Management&nbsp&nbsp&nbsp<span class="muted">Version: 1.7 from 2016/04/26 21:54:18</span></p>
    </footer>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->




</body>
</html>
