var getdata;
$("#GridId").dxDataGrid({
    dataSource: [],
    columnAutoWidth: true,
    showBorders: true,
    showRowLines: true,
    allowColumnReordering: true,
    allowColumnResizing: true,
    sorting: {
        mode: "none"
    },
    selection: { mode: "single" },
    height: function () {
        return window.innerHeight / 1.5;
    },
    loadPanel: {
        enabled: true,
        height: 90,
        width: 200,
        text: 'Data is loading...'
    },
    filterRow: { visible: true, applyFilter: "auto" },
    rowAlternationEnabled: true,
    onRowPrepared: function (e) {
        if (e.rowType === "header") {
            e.rowElement.css('background', '#42909A');
            e.rowElement.css('color', 'white');
        }
        e.rowElement.css('fontSize', '11px');
    },
    columns: [
        { dataField: "supplier_id", visible: false },
        { dataField: "supplierName", caption: "supplierName" },
        { dataField: "mailingName", caption: "Mailing Name" },
        { dataField: "address1", caption: "Address 1" },
        { dataField: "address2", caption: "Address 2" },
        { dataField: "address3", caption: "Address 3" },
        { dataField: "country", caption: "Country" },
        { dataField: "state", caption: "State" },
        { dataField: "city", caption: "City" },
        { dataField: "district", caption: "District" },
        { dataField: "pincode", caption: "Pincode" },
        { dataField: "phone", caption: "Phone" },
        { dataField: "mobile", caption: "Mobile" },
        { dataField: "email", caption: "Email" },
        { dataField: "fax", caption: "Fax" },
        { dataField: "panNo", caption: "PAN No" },
        { dataField: "gstNo", caption: "GST No" },
        { dataField: "tallyCode", caption: "Tally Code" },
        { dataField: "currency", caption: "Currency" },
        { dataField: "gstApplicable", caption: "GST Applicable" },
        { dataField: "legalName", caption: "Legal Name" },
        { dataField: "supplyTypeCode", caption: "Supply Type Code" },
        { dataField: "remarks", caption: "Remarks" },
        { dataField: "msmeStatus", caption: "MSME Status" },
        { dataField: "msmeNo", caption: "MSME No" },
        { dataField: "creditDays", caption: "Credit Days" },
        { dataField: "refCode", caption: "Ref Code" },
        { dataField: "bankName", caption: "Bank Name" }
    ],
    onSelectionChanged: function (e) {
        console.log('Row selected:', e.selectedRowsData); 
        if (e.selectedRowsData.length > 0) {
            getdata = e.selectedRowsData[0]; 
        } else {
            getdata = null;
        }
    }
}).dxDataGrid("instance");


$("#edit").click(function () {
    $("#supplier_id").val(getdata.supplier_id);
    $("#supplierName").val(getdata.supplierName);
    $("#mailingName").val(getdata.mailingName);
    $("#address1").val(getdata.address1);
    $("#address2").val(getdata.address2);
    $("#address3").val(getdata.address3);
    $("#country").val(getdata.country);
    $("#state").val(getdata.state);
    $("#city").val(getdata.city);
    $("#district").val(getdata.district);
    $("#pincode").val(getdata.pincode);
    $("#phone").val(getdata.phone);
    $("#mobile").val(getdata.mobile);
    $("#email").val(getdata.email);
    $("#fax").val(getdata.fax);
    $("#panNo").val(getdata.panNo);
    $("#gstNo").val(getdata.gstNo);
    $("#tallyCode").val(getdata.tallyCode);
    $("#currency").val(getdata.currency);
    $("#gstApplicable").val(getdata.gstApplicable);
    $("#legalName").val(getdata.legalName);
    $("#supplyTypeCode").val(getdata.supplyTypeCode);
    $("#remarks").val(getdata.remarks);
    $("#msmeStatus").val(getdata.msmeStatus);
    $("#msmeNo").val(getdata.msmeNo);
    $("#creditDays").val(getdata.creditDays);
    $("#refCode").val(getdata.refCode);
    $("#bankName").val(getdata.bankName);
    $("#country").dxSelectBox({
        value: getdata.country,
    });
    $("#currency").dxSelectBox({
        value: getdata.currency,
    });
    $("#district").dxSelectBox({
        value: getdata.district,
    });
    $("#supplyTypeCode").dxSelectBox({
        value: getdata.supplyTypeCode,
    });

    $("#gstApplicable").change({
        text: "GST Applicable",
        value: false
    });


    $('#OpenForm').modal('show');

});




$("#country").dxSelectBox({
    items: ["India", "Bagladesh", "Afghanistan"],
    placeholder: "Select Sales Person Name",
    searchEnabled: true,
    showClearButton: true,

});


$("#currency").dxSelectBox({
    items: ["INR", "USD", "EUR"],
    palceholder: "Select Currency",
    searchEnabled: true,
    showClearButton: true,

})


$("#district").dxSelectBox({
    items: ["Khargone", "Bhopal", "Dewas"],
    placeholder: "Select district",
    searchEnabled: true,
    showClearButton: true,


})

$('#gstApplicable').change(function () {
    var checkboxValue = $(this).is(':checked') ? 'Checked' : 'Unchecked';
    console.log("GST Applicable checkbox is: " + checkboxValue);
});


$("#supplyTypeCode").dxSelectBox({
    items: ["supply-1", "supply-2", "supply-3"],
    placeholder: "Select Supply Types",
    searchEnabled: true,
    showClearButton: true,

})

$("#Save").click(function () {
    var supplierName = document.getElementById("supplierName").value;
    var mailingName = document.getElementById("mailingName").value;
    var address1 = document.getElementById("address1").value;
    var address2 = document.getElementById("address2").value;
    var address3 = document.getElementById("address3").value;
    var country = $("#country").dxSelectBox('instance').option('value');
    var state = document.getElementById("state").value;
    var city = document.getElementById("city").value;
    var district = $("#district").dxSelectBox('instance').option('value');
    var pincode = document.getElementById("pincode").value;
    var phone = document.getElementById("phone").value;
    var mobile = document.getElementById("mobile").value;
    var email = document.getElementById("email").value;
    var fax = document.getElementById("fax").value;
    var website = document.getElementById("website").value;
    var panNo = document.getElementById("panNo").value;
    var gstNo = document.getElementById("gstNo").value;
    var tallyCode = document.getElementById("tallyCode").value;
    var currency = $("#currency").dxSelectBox('instance').option('value');
    var gstApplicable = document.getElementById("gstApplicable").checked
    var legalName = document.getElementById("legalName").value;
    var supplyTypeCode = $("#supplyTypeCode").dxSelectBox('instance').option('value');
    var remarks = document.getElementById("remarks").value;
    var msmeStatus = document.getElementById("msmeStatus").value;
    var msmeNo = document.getElementById("msmeNo").value;
    var creditDays = document.getElementById("creditDays").value;
    var refCode = document.getElementById("refCode").value;
    var bankName = document.getElementById("bankName").value;

    $.ajax({
        type: "POST",
        url: "WebService_DemoWindow.asmx/DevXData",
        data: JSON.stringify({
            supplierName: supplierName, mailingName: mailingName, address1: address1, address2: address2, address3: address3, country: country, state: state, city: city, district: district, pincode: pincode, phone: phone, mobile: mobile, email: email, fax: fax, website: website, gstNo: gstNo, panNo: panNo, tallyCode: tallyCode, currency: currency, gstApplicable: gstApplicable, legalName: legalName, supplyTypeCode: supplyTypeCode, remarks: remarks, msmeNo: msmeNo, msmeStatus: msmeStatus, creditDays: creditDays, refCode: refCode, bankName: bankName
        }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (results) {
            var res = results.d;
            if (res === "success") {
                alert("Data saved");
            } else {
                alert("Failed to save data: " + res);
            }
        },
        error: function (err) {
            console.error("Error: ", err);
        }
    });
});

GetSavedClientData();
function GetSavedClientData() {
    $.ajax({
        type: "POST",
        url: "WebService_DemoWindow.asmx/GetSavedClientData",
        data: {},
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (results) {
            var res = results.d
            var RES1 = JSON.parse(res);
            $("#GridId").dxDataGrid({
                dataSource: RES1,
            });
        },
        error: function errorFunc(jqXHR) {
            console.log(jqXHR);
        }
    });

}


$("#GridId")