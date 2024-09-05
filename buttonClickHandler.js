function buttonClickHandler() {
    console.log("You Have Clicked Button ");

    const xhr = new XMLHttpRequest();

    xhr.open('Get', 'index.text.aspx', true);
    xhr.onload = function() {
        if (this.status === 200) {
            console.log(this.responseText);
        }
        else {
            console.log("Some Error Occured");
        }
    };
    xhr.send();
}
