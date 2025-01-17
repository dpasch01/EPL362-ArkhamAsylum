<form id="add-appointment-form" name='add-appointment-form' action="" method="post" enctype="multipart/form-data" class="form-horizontal">
    <fieldset>
        <div class="modal-body">
            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patientID_input">Patient ID</label>  
              <div class="col-md-6">
              <input readonly id="edit_patientID_input" name="edit_patientID_input" placeholder="Patient ID goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patient_firstname_input">Firstname</label>  
              <div class="col-md-6">
              <input readonly id="edit_patient_firstname_input" name="edit_patient_firstname_input" placeholder="Patient's firstname goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patient_lastname_input">Lastname</label>  
              <div class="col-md-6">
              <input readonly id="edit_patient_lastname_input" name="edit_patient_lastname_input" placeholder="Patient's lastname goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_email_input">Relative's email</label>  
              <div class="col-md-6">
              <input readonly id="edit_email_input" name="edit_email_input" placeholder="Relative's email goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patient_address_input">Address</label>  
              <div class="col-md-6">
              <input readonly id="edit_patient_address_input" name="edit_patient_address_input" placeholder="Patient's address goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patient_phonenumber_input">Phonenumber</label>  
              <div class="col-md-6">
              <input readonly id="edit_patient_phonenumber_input" name="edit_patient_phonenumber_input" placeholder="Patient's phonenumber goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="edit_patient_birthdate_input">Birthdate</label>  
              <div class="col-md-6">
              <input readonly id="edit_patient_birthdate_input" name="edit_patient_birthdate_input" placeholder="Patient's birthdate goes here..." class="form-control input-md" required="" type="text">

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="patient_gender">Gender</label>
              <div class="col-md-4">
              <div class="radio">
                <label for="patient_gender-0">
                  <input disabled name="patient_gender" id="patient_gender-0" value="1" checked="checked" type="radio">
                  Male
                </label>
                </div>
              <div class="radio">
                <label for="patient_gender-1">
                  <input disabled name="patient_gender" id="patient_gender-1" value="2" type="radio">
                  Female
                </label>
                </div>
              </div>
            </div>
        </div>
        <div class="modal-footer">
            <div class="form-group">
                <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
            </div>
        </div>
    </fieldset>
</form>