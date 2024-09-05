$(document).ready(function () {
    $("#Savebtn").click(function () {
        var isValid = true;
        var errors = [];

        var unitCode = $("#unitCode").val();
        if (unitCode.length < 5) {
            isValid = false;
            errors.push("Unit Code must be at least 5 characters long.");
        }

        var refCode = $("#RefCode").val();
        if (!/^\d+$/.test(refCode)) {
            isValid = false;
            errors.push("Ref Unit Code must be a number.");
        }
        var productionName = $("#productionName").val();
        if (productionName.trim() === "") {
            isValid = false;
            errors.push("Production Name is required.");
        }
        var address = $("#address").val();
        if (address.trim() === "") {
            isValid = false;
            errors.push("Address is required.");
        }
        var country = $("#country").val();
        if (country === "Select...") {
            isValid = false;
            errors.push("Country must be selected.");
        }
        var state = $("#state").val();
        if (state === "Select...") {
            isValid = false;
            errors.push("State must be selected.");
        }
        var city = $("#city").val();
        if (city === "Select...") {
            isValid = false;
            errors.push("City must be selected.");
        }
        var pincode = $("#pincode").val();
        if (!/^\d{6}$/.test(pincode)) {
            isValid = false;
            errors.push("Pincode must be exactly 6 digits.");
        }
        var branch = $("#branch").val();
        if (branch === "Select...") {
            isValid = false;
            errors.push("Branch must be selected.");
        }

        if (isValid) {
            $.ajax({
                type: "POST",
                url: "WebService_DemoWindow.asmx/Savedata",
                data: JSON.stringify({
                    RefCode: refCode,
                    unitCode: unitCode,
                    productionName: productionName,
                    address: address,
                    country: country,
                    state: state,
                    city: city,
                    pincode: pincode,
                    branch: branch
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (results) {
                    alert("Data saved");
                    updateTable();
                },
                error: function (err) {
                    console.error("Error: ", err);
                }
            });
        } else {
            alert(errors.join("\n"));
        }
    });
});

function updateTable() {
    $.ajax({
        type: "POST",
        url: "WebService_DemoWindow.asmx/GetData",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (results) {
            var data = results.d;

            var tableBody = '';

            data.forEach(function (item) {
                tableBody += `<tr>
                        <td>${item.unitCode}</td>
                        <td>${item.RefCode}</td>
                        <td>${item.productionName}</td>
                        <td>${item.address}</td>
                        <td>${item.country}</td>
                        <td>${item.state}</td>
                        <td>${item.city}</td>
                        <td>${item.pincode}</td>
                        <td>${item.branch}</td>
                    </tr>`;

            });

            $("tbody").html(tableBody);
        },
        error: function (err) {
            console.error("Error: ", err);
        }
    });
}
