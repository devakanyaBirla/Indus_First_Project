<%@ Page Language="VB" AutoEventWireup="false" CodeFile="IndexMaster.aspx.vb" Inherits="IndexMaster" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Production Unit Master</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 <style>
.modal-dialog {
    max-width: 100%; 
}
.modal-content {
    width: 100%;
    height: auto;
}
.close-button span {
    color: white !important;
}

@media only screen and (max-width: 768px) {
    .modal-dialog {
        max-width: 90%;
    }

    .modal-content {
        width: 100%;
        height: 500px;
        overflow-y: auto; 
    }

    .modal-body {
        height: 400px;
        overflow-y: auto; 
        padding: 10px; 
    }

    .form-control,
    .form-select {
        font-size: 14px; 
    }
}

@media only screen and (min-width: 769px) {
    .modal-content {
        height: 600px; 
    }

    .modal-body {
        height: 500px; 
    }
}
</style>
</head>
<body>
    <div class="container-fluid mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <button class="btn btn-primary " data-toggle="modal" data-target="#exampleModel">Create</button>
                <button class="btn btn-secondary ml-1">Edit</button>
                <button class="btn btn-danger  ml-1">Delete </button>
            </div>
            <h5>Production Unit Master</h5>
        </div>

        <div class="table-body mt-4">
            <table class="table table-bordered">
                <thead class="bg-dark text-white">  
                    <tr>
                        <th>Production Unit Code</th>
                        <th>Ref Unit Code </th>
                        <th>Production Unit Name </th>
                        <th>Branch Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>State</th>
                        <th>PinCode</th>
                        <th>Country</th>
                    </tr>
                </thead>
                <tbody>
                    <div class="col-md-12">
                          <tr>    <td><input type="text" class="form-control" placeholder="Search..." /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="Search" /></td>
                                  <td>
                                      <input type="text" class="form-control" placeholder="admin" /></td>
                              </tr>
                    </div>
               </tbody>
            </table>
        </div>
    </div>
    <div class="modal fade" id="exampleModel" tabindex="-1" role="dialog" aria-labelledby="ModelLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl ml-4 mr-5" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                    <h5 class="modal-title  id="ModelLabel">Production Unit Master Creation / Updation</h5>
                    <button type="button"  class="close close-button" data-dismiss="modal" >
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
 <div class="modal-body">
    <div class="container-fluid ">
        <div class="card-body">
            <form>
                <div class="row mb-3">
                    <div class="col-12 col-md-4">
                        <label for="unitCode" class="form-label">Unit Code</label>
                        <input type="text" id="unitCode" class="form-control" />
                    </div>
                    <div class="col-12 col-md-4">
                        <label for="RefCode" class="form-label">Ref Unit Code</label>
                        <input type="text" id="RefCode" class="form-control"/>
                    </div>
                    <div class="col-12 col-md-4">
                        <label for="productionName" class="form-label">Production Name</label>
                        <input type="text" id="productionName" class="form-control" />
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-12">
                        <label for="address" class="form-label">Address</label>
                        <textarea class="form-control" id="address"></textarea>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-12 col-md-4">
                        <label class="form-label" for="country">Country</label>
                        <select class="form-select" id="country">
                            <option selected>Select...</option>
                            <option>country-1</option>
                            <option>country-2</option>
                            <option>country-3</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-4">
                        <label class="form-label" for="state">State</label>
                        <select class="form-select" id="state">
                            <option selected>Select...</option>
                            <option>State-1</option>
                            <option>State-2</option>
                            <option>State-3</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-4">
                        <label class="form-label" for="city">City</label>
                        <select class="form-select" id="city">
                            <option selected>Select...</option>
                            <option>City-1</option>
                            <option>City-2</option>
                            <option>City-3</option>
                        </select>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-12 col-md-4">
                        <label for="pincode" class="form-label">PinCode</label>
                        <input type="text" class="form-control" id="pincode" />
                    </div>
                    <div class="col-12 col-md-4">
                        <label for="branch" class="form-label">Branch Name</label>
                        <select id="branch" class="form-select">
                            <option selected>Select...</option>
                            <option>Branch-1</option>
                            <option>Branch-2</option>
                            <option>Branch-3</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">

                        <button type="button" class="btn btn-secondary">New</button>
                        <button type="button" id="Savebtn" class="btn btn-primary" data-dismiss="modal">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</div>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script src="JavaScript.js"></script>
</body>
</html>
