/*
 * creates a new XMLHttpRequest object which is the backbone of AJAX,
 * or returns false if the browser doesn't support it
 */
function getXMLHttpRequest() {
    var xmlHttpReq = false;
    // to create XMLHttpRequest object in non-Microsoft browsers
    if (window.XMLHttpRequest) {
        xmlHttpReq = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        try {
            // to create XMLHttpRequest object in later versions
            // of Internet Explorer
            xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (exp1) {
            try {
                // to create XMLHttpRequest object in older versions
                // of Internet Explorer
                xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (exp2) {
                xmlHttpReq = false;
            }
        }
    }
    return xmlHttpReq;

}
/*
 * AJAX call starts with this function
 */
function makeRequest() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
    xmlHttpRequest.open("GET", "/c1", true);
    xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xmlHttpRequest.send();
}

/*
 * Returns a function that waits for the state change in XMLHttpRequest
 */
function getReadyStateHandler(xmlHttpRequest) {

    // an anonymous function returned
    // it listens to the XMLHttpRequest instance
    return function () {
        if (xmlHttpRequest.readyState === 4) {
            if (xmlHttpRequest.status === 200) {
                document.getElementById("com").innerHTML = xmlHttpRequest.responseText;
            } else {
                alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
            }
        }
    };
}


function cost() {
    // var oldtemp = document.querySelector('#test').parentNode.removeChild(template);
    //
    //
    // var object = document.head.querySelector("link[rel=import][href='cost.jsp").import.querySelector('template');
    //
    //
    //
    //
    // var obj=document.querySelector("link[rel=import][href='cost.jsp']").;
    // var parent=obj.parentNode;// родитель
    // var newobj=document.createElement("A");
    // newobj.id="activity_text";
    // parent.replaceChild(newobj,obj


    // var oldObject = document.querySelector('#idclick');
    // idclick.parentNode.removeChild(oldObject);

    var newTemp = document.querySelector("link[rel=import][href='cost.jsp']").getElementsByTagName('template');
    // var newT = document.querySelector('#idclick');


    // alert(newT);
    // alert(newTemp);
    // idclick.insertAdjacentHTML("beforeBegin", newTemp);
    // idclick2.appendChild(newT);

    // idclick.innerHTML = newT;
    idclick2.innerHTML = newTemp;

    // var stack = document.getElementById('newCategories');
    // stack.insertAdjacentHTML('beforeend', newCategory);

    // var newTemp = document.querySelector("link[rel=import][href='cost.jsp']");
    // var text = newTemp.import.querySelector('template');
    // var divClick = document.querySelector('#idclick').importNode(text, true);
    // divClick.insertAdjacentHTML("beforeBegin", divClick);


    // document.insertAdjacentHTML('click', "cfsdsasdc");
    // document.querySelector("link[rel=import][href='cost.jsp']").import.querySelector('template');

    var link = document.querySelector("link[rel=import][href='cost.jsp']"); // Находит в документе элемент!!!
    var template = link.imp.import.querySelector('template');//Клонирует содиржимое тега template
    var clone = document.importNode(template.content, true);
    document.querySelector('#idclick').appendChild(clone);

}
function reviews() {

    var link = document.querySelector("link[rel=import][href='reviews.jsp']"); // Находит в документе элемент!!!
    // var link = document.querySelector("link[rel=import][href='reviews.jsp']").childNodes; // Находит в документе элемент!!!
    // // Clone the <template> in the import.
    // var template = link.import.querySelector('template');//Клонирует содиржимое тега template
    // var clone = document.importNode(template.content, true);
    // document.querySelector('#idclick').appendChild(clone);
    // [].forEach.call(link, function(elem) {
    //     alert( elem ); // HEAD, текст, BODY
    // });
    // idclick2.innerHTML = document.appendChild(clone);

        var time = link.import.querySelector('#idjspreviews')
        document.body.appendChild(time);
}