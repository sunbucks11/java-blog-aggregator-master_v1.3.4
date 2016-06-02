<form class="form-horizontal" method="post" id="settings-form" style="width:100%" action="~">
    <div class="tab-content">
        <div class="tab-pane fade active in" id="1">
            <legend>General</legend>
            <br/>
            <div class="row">
                <div class="col-md-6">




                    <div id="avatar-notify-message"></div>
                    <div class="row">


                        <div class="control-group">
                            <!-- <label class="control-label">Instance Name</label> -->
                            <img src="http://www.onlinetestpro.co.uk/images/Admin.png" alt="Admin" height="100" width="100">
                        </div>

                        <div style="float: left; margin-left: 150px; margin-top:-100px; display: inline-block;">
                            <b>Upload a Photo</b>
                            <br>
                            <p>You can upload a JPG, GIF or PNG file. File size limit is about 4MB.</p>
                            <span class="btn btn-info btn-file"> Upload Photo <input type="file"></span>
                            <span class="btn btn-danger btn-file"> Reset Photo <input type="file"></span>
                        </div>



                    </div>

                    <p/>


                    <div class="form-group">
                        <label class="control-label" for="member-time-zone">Your Time Zone</label>

                        <!-- Add Time Zone -->
                        <%@ include file="timezone.jsp" %>
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
                            <div class="muted">
                                <p>First name as in passport</p>
                            </div>

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
                            <div class="muted">
                                <p>Family name as in passport</p>
                            </div>

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
                            <div class="muted">
                                <p>Please select your gender</p>
                            </div>

                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label" for="profile-field-67">Country
                            <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                        </label>


                        <!-- List of Countries -->
                        <%@ include file="countries.jsp" %>



                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label" for="profile-field-73">District
                            <span style="color:red;font-size:14px">&nbsp;<b>*</b></span>
                        </label>

                        <div id="profile-field-div-73" style="display:inline-block;width:100%">
                            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-73" style="width:97%;color:black" maxlength="64" value="District" />
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p>Please use the following format dd.mm.yyyy</p>
                            </div>

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
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p>Emergency Contact Name</p>
                            </div>

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
                            <div class="muted">
                                <p>Emergency Phone Number</p>
                            </div>

                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label" for="profile-field-79">Additional information
                        </label>

                        <div id="profile-field-div-79" style="display:inline-block;width:100%">
                            <textarea type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-79" style="width:97%; height:100px; color:black" maxlength="64"></textarea>
                            <div class="muted">
                                <p></p>
                            </div>

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
                            <div class="muted">
                                <p>Your Credit Card Number</p>
                            </div>

                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label" for="profile-field-86">Bank Account
                        </label>

                        <div id="profile-field-div-86" style="display:inline-block;width:100%">
                            <input type="text" class="input-xlarge form-control login-form-field profile-field" id="profile-field-86" style="width:97%;color:black" maxlength="64" value="12346234567" />
                            <div class="muted">
                                <p>Your bank account number</p>
                            </div>

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
                            <div class="muted">
                                <p>Please select one or more values below</p>
                            </div>

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
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-0" value="1 Month" class="profile-radio-field" checked="checked" />
                                    <span style="vertical-align: middle; margin: 0px;">1 Month</span>


                                </div>
                                <div style="display:block;padding:0px; padding-right:12px;height:24px">
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-1" value="6 Months" class="profile-radio-field" />
                                    <span style="vertical-align: middle; margin: 0px;"> 6 Months</span>


                                </div>
                                <div style="display:block;padding:0px; padding-right:12px;height:24px">
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-90" id="profile-radio-field-2" value="1 Year" class="profile-radio-field" />
                                    <span style="vertical-align: middle; margin: 0px;"> 1 Year</span>


                                </div>
                            </div>
                            <div class="muted">
                                <p>Please select your payment period</p>
                            </div>

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
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-0" value="Credit Card" class="profile-radio-field" />
                                    <span style="vertical-align: middle; margin: 0px;"> Credit Card</span>


                                </div>
                                <div style="display:inline-block;padding:0px; padding-right:12px;height:24px">
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-1" value="Western Union" class="profile-radio-field" checked="checked" />
                                    <span style="vertical-align: middle; margin: 0px;">Western Union</span>


                                </div>
                                <div style="display:inline-block;padding:0px; padding-right:12px;height:24px">
                                    <input style="vertical-align: middle; margin: 0px;padding-right:4px" type="radio" name="profile-radio-field-89" id="profile-radio-field-2" value="Bank Account Transfer" class="profile-radio-field" />
                                    <span style="vertical-align: middle; margin: 0px;"> Bank Account Transfer</span>


                                </div>
                            </div>
                            <div class="muted">
                                <p>Please select your payment type</p>
                            </div>

                        </div>


                    </div>
                </div>

            </div>
        </div>

        <div>
            <span style="color:red;font-size:14px">&nbsp;<b>*</b></span> - Required field
            <br/>&nbsp;
            <br/>
        </div>
    </div>



    <div class="form-actions" style="padding-top:15px;padding-bottom:15px">
        <button data-loading-text="Saving..." data-complete-text="Changes saved" name="save-member-profile" id="save-member-profile" class="btn btn-default btn-primary save-settings btn-sm">Save changes</button>
    </div>
</form>