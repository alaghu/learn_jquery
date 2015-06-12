// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// Styling list-item

$(document).ready(
    //anonymous function
    function() {

        // Styling list-item

        // jquery selector which will create a jq object 
        // The selector looks for the child (>) lis of #selected-plays
        // the addClass will add the class to  those elements
        $('#selected-plays > li').addClass('horizontal');
        
        // selecting lis that is a descendent of #selected-plays
        // which are not of class horizontal
        $('#selected-plays li:not(.horizontal)').addClass('sub-level');
        
        // Styling Links
        // The most important aspect of these is the regular expression based
        // selector rules.Basically JQuery supports it. 
        // [] - Attribute Selector 
        // http://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048
        // The jqapi
        // http://jqapi.com/#p=attribute-starts-with-selector
        // http://jqapi.com/#p=attribute-contains-selector
        
        // researching regular expression
        // ^ - Starts with 
        // $ - Ends with 
        // * - contains
        // [][] - and 
        
        // a attribute's href starts with mailto
        $('a[href^="mailto:"]').addClass('mailto');
        // a attribute's href ends with pdf
        $('a[href$=".pdf"]').addClass('pdflink');
        //a attribute's href starts with http and href contains heny
        $('a[href^="http"][href*="henry"]').addClass('henrylink')
        
        
    }
);