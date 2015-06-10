// This is Step 1.1 in Java script
// --------------------------------
// This defines a function with no parameters. This is method 1 (function 
// declaration)

function addHighlightClass()  {
// The code here first passes a selector to the jquery function ($)
// then through a jquery method (addClass) passes a css class.

// This jquery function is executed. 
// The jquery function is passed a selector. This returns a jQuery object.In 
// this case there are two elements in the returned object. 
// To this object the addClass method will add the class name, which is the 
// parameter.
  $('div.poem-stanza').addClass('highlight');
}


// Through jquery function pass "document" which will return a jQuery object.
// http://api.jquery.com/Types/#jQuery. To this function the document parameter
// is passed. This is the DOM itself. I think. 
// the ready method ensures the entire dom is loaded. Once loaded the function
// is passed as a parameter. This function is then executed. 

$(document).ready(addHighlightClass);