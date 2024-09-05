<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Production Unit Master</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">
        <div class="card">
            <div class="card-header bg-dark text-white">
                <h5>Production Unit Master Creation/Updation</h5>
            </div>
            <div class="card-body">
                <form>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="unitCode" class="form-label">Unit Code</label>
                            <input type="text" class="form-control" id="unitCode" placeholder="PU00002" readonly>
                        </div>
                        <div class="col-md-6">
                            <label for="refUnitCode" class="form-label">Ref Unit Code</label>
                            <input type="text" class="form-control" id="refUnitCode" placeholder="Ref Unit Code">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="productionUnitName" class="form-label">Production Unit Name</label>
                            <input type="text" class="form-control" id="productionUnitName" placeholder="Production Unit Name">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" rows="2" placeholder="Enter Address"></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="country" class="form-label">Country</label>
                            <select class="form-select" id="country">
                                <option selected>Select--</option>
                                <option>Country 1</option>
                                <option>Country 2</option>
                                <option>Country 3</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="state" class="form-label">State</label>
                            <select class="form-select" id="state">
                                <option selected>Select--</option>
                                <option>State 1</option>
                                <option>State 2</option>
                                <option>State 3</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="city" class="form-label">City</label>
                            <select class="form-select" id="city">
                                <option selected>Select--</option>
                                <option>City 1</option>
                                <option>City 2</option>
                                <option>City 3</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="pincode" class="form-label">Pincode</label>
                            <input type="text" class="form-control" id="pincode" placeholder="Pincode">
                        </div>
                        <div class="col-md-4">
                            <label for="branchName" class="form-label">Branch Name</label>
                            <select class="form-select" id="branchName">
                                <option selected>Select...</option>
                                <option>Branch 1</option>
                                <option>Branch 2</option>
                                <option>Branch 3</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-end">
                            <button type="button" class="btn btn-secondary">New</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <d
    
    <!-- Bootstrap JS CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
