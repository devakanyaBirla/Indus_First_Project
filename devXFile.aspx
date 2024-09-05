<%@ Page Language="VB" AutoEventWireup="false" CodeFile="devXFile.aspx.vb" Inherits="devXFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DevExtre</title>

    <link rel="stylesheet" href="https://cdn3.devexpress.com/jslib/23.1.4/css/dx.light.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .Icon {
            margin-top: 0 !important;
        }

        .text-white {
            margin-top: 10px;
            height: 50px;
            font-size: 20px;
        }

        .form-container {
            padding: 15px;
            margin: auto;
        }

        @media (max-width: 576px) {
            .form-container {
                width: 100%;
                padding: 10px;
            }

            .form-control {
                width: 100%;
                height: auto;
            }

            .btn {
                margin-bottom: 10px;
                padding: 8px 12px;
                font-size: 14px;
            }
        }

        @media (min-width: 577px) and (max-width: 768px) {
            .form-container {
                width: 90%;
            }

            .form-control {
                width: 100%;
                height: auto;
            }

            .btn {
                margin-bottom: 10px;
                padding: 10px 15px;
                font-size: 16px;
            }
        }

        @media (min-width: 769px) and (max-width: 992px) {
            .form-container {
                width: 80%;
            }

            .form-control {
                width: 100%;
                height: auto;
            }

            .btn {
                margin-bottom: 15px;
                padding: 12px 18px;
                font-size: 16px;
            }
        }

        @media (min-width: 993px) {
            .form-container {
                width: 60%;
            }

            .form-control {
                width: 100%;
                height: auto;
            }
        }

        .form-control {
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            font-size: 14px;
        }

            .form-control:focus {
                border-color: #007bff;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
                outline: none;
            }

            .form-control::placeholder {
                color: #6c757d;
                opacity: 1;
            }

            .form-control:hover {
                border-color: #80bdff;
            }

        .form-group {
            margin-bottom: 1rem;
        }
    </style>

</head>
<body>
    <div class="container-fliud  border m-0">
        <div class="container-fluid mt-4">
            <div >
                <div>
                    <button class="btn btn-primary " data-toggle="modal" data-target="#OpenForm">OpenForm</button>
                    <button class="btn btn-success" style="width:100px" id="edit">Edit</button>
                </div>
            </div>
            <div id="GridId">
            </div>
        </div>

        <div class="modal fade" id="OpenForm" tabindex="-1" role="dialog" aria-labelledby="ModelLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl  " role="document">
                <div class="modal-content border">
                    <div class="DialogBoxCustom bg-dark" style="float: left; border-top-left-radius: 4px; border-top-right-radius: 4px; display: flex; justify-content: center; align-items: center; position: relative;">
                        <strong id="poptag" style="flex-grow: 1; cursor: pointer;" class="text-white ml-3">Ledger Master Creation/Updation</strong>
                        <a href="javascript:void(0);" class="iconRightDbox btn-danger" data-dismiss="modal" style="cursor: pointer;">
                            <span style="font-weight: 600; margin-right: 4px; margin-left: 4px;" class="Icon">X</span>
                        </a>
                    </div>

                    <div class="modal-body border">
                        <div>
                            <form class="p-4 shadow rounded bg-light" method="post">
                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="supplierName">Supplier Name</label>
                                            <input type="text" class="form-control" id="supplierName"name="supplierName"  />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="mailingName">Mailing / Trade Name</label>
                                            <input type="text" class="form-control" id="mailingName" name="mailingName"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="address1">Address1</label>
                                            <input type="text" class="form-control" id="address1" placeholder="Address1" name="address1"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="address2">Address2</label>
                                            <input type="text" class="form-control" id="address2" placeholder="Address2" name="address2"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="address3">Address3</label>
                                            <input type="text" class="form-control" id="address3" placeholder="Address3" name="address3 "/>
                                        </div>
                                    </div>



                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <label class="font-11">country</label>
                                        <div id="country"></div>
                                    </div>
                                    <%--<div class="col-md-3">
                                        <div class="form-group">
                                            <label for="country">Country</label>
                                            <select class="form-control" id="">
                                                <option selected>Country</option>
                                                <option>Country-1</option>
                                                <option>Country-2</option>
                                            </select>
                                        </div>
                                    </div>--%>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <input type="text" class="form-control" id="state" placeholder="Madhya Pradesh" name="state"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="city">City</label>
                                            <input type="text" class="form-control" id="city" placeholder="Indore" name="city"/>
                                        </div>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <label class="font-11">District</label>
                                        <div id="district"></div>
                                    </div>
                                    <%--<div class="col-md-3">
                                 <div class="form-group">
                                     <label for="country">District</label>
                                     <select class="form-control" id="district">
                                         <option selected>District</option>
                                         <option>District-1</option>
                                         <option>District-2</option>
                                     </select>
                                 </div>
                             </div>--%>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="pincode">Pincode</label>
                                            <input type="text" class="form-control" id="pincode" placeholder="Pincode" name="pincode" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="phone">Phone No.</label>
                                            <input type="text" class="form-control" id="phone" placeholder="Phone No." name="phone"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="mobile">Mobile No.</label>
                                            <input type="text" class="form-control" id="mobile" placeholder="Mobile No." name="mobile"/>
                                        </div>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email" placeholder="Email" name="email"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="fax">Fax</label>
                                            <input type="text" class="form-control" id="fax" placeholder="Fax" name="fax"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="website">Website</label>
                                            <input type="text" class="form-control" id="website" placeholder="Website" name="website"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="panNo">Pan No.</label>
                                            <input type="text" class="form-control" id="panNo" placeholder="Website" name="panNo"/>
                                        </div>
                                    </div>

                                </div>


                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="gstNo">GST No.</label>
                                            <input type="text" class="form-control" id="gstNo" placeholder="Tally Code" name="gstNo"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="tallyCode">Tally Code</label>
                                            <input type="text" class="form-control" id="tallyCode" placeholder="Tally Code" name="tallyCode"/>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <label class="font-11">Currency</label>
                                        <div id="currency"></div>
                                    </div>

                                    <%--<div class="col-md-2">
                                <div class="form-group">
                                    <label for="gstApplicable">GST Applicable</label>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="gstApplicable" />
                                        <label class="form-check-label" for="gstApplicable">Yes</label>
                                    </div>
                                </div>
                            </div>--%>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="gstApplicable">GST Applicable</label>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="gstApplicable" />
                                                <label class="form-check-label" for="gstApplicable">Yes</label>
                                            </div>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="legalName">Legal Name</label>
                                                <input type="text" class="form-control" id="legalName" placeholder="Legal Name" name="legalName"/>
                                            </div>
                                        </div>


                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                            <label class="font-11">Supply Type Code</label>
                                            <div id="supplyTypeCode"></div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="remarks">Remarks</label>
                                                <input type="text" class="form-control" id="remarks" placeholder="Remarks" name="remarks"/>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="msmeStatus">MSME Status</label>
                                                <input type="text" class="form-control" id="msmeStatus" placeholder="MSME No" name="msmeStatus"/>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row mb-3">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="msmeNo">MSME No</label>
                                                <input type="text" class="form-control" id="msmeNo" name="msmeNo"/>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="creditDays">Credit Days</label>
                                                <input type="text" class="form-control" id="creditDays" placeholder="Credit Days" name="creditDays"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="refCode">Ref Code</label>
                                                <input type="text" class="form-control" id="refCode" placeholder="Ref Code" name="refCode"/>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="bankName">Bank Name</label>
                                                <input type="text" class="form-control" id="bankName" placeholder="Bank Name" name="bankName"/>
                                            </div>
                                        </div>
                                    </div>

                                    <%--<div class="row mb-3">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="bankAcNo">Bank Ac No</label>
                                                <input type="text" class="form-control" id="bankAcNo" placeholder="Bank Ac No" name="bankAcNo"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="ifscCode">Bank IFSC Code</label>
                                                <input type="text" class="form-control" id="ifscCode" placeholder="Bank IFSC Code" name="ifscCode"/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="micrCode">Bank MICR Code</label>
                                                <input type="text" class="form-control" id="micrCode" placeholder="Bank MICR Code" name="micrCode"/>
                                            </div>
                                        </div>--%>
                                        <div class="row mb-4 mt-4">
                                            <div class="col-md-12 text-right">
                                                <button type="button" class="btn btn-primary">New</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                                <button type="submit" id="Save" class="btn btn-success">Save</button>
                                            </div>
                                      </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="https://cdn3.devexpress.com/jslib/23.1.4/js/jquery.min.js"></script>
    <script src="https://cdn3.devexpress.com/jslib/23.1.4/js/jszip.min.js"></script>
    <script src="https://cdn3.devexpress.com/jslib/23.1.4/js/dx.all.js"></script>
    <script src="DevXFile.js"></script>
</body>
</html>
