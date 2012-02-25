<!doctype html>
<html>
    <head>
        <title>ArrayFilter()</title>
        <link href="../css/reset.css" type="text/css" rel="stylesheet" />
        <link href="../css/style.css" type="text/css" rel="stylesheet" />
    </head>
    <body style="font-family:Helvetica,arial,sans-serif;font-size:1em;">
        <div class="example-block">
            <div class="title">ArrayFilter()</div>
           <pre>
&lt;cfscript&gt;
    <strong>// function to include only names that being with 'd'</strong>
    function includeD(obj) {
        return left(obj,1)=='d';
    }
    <strong>// set up my struct of arrays</strong>
    'circles' = {
        'friends': ['Lucas','Phil','Dave','Brian','Dillon'],
        'coworkers': ['Tyler','Mike','Doug'],
        'family': ['Dean','Jared','Jason']
    };
    <strong>// empty array to hold "d" names</strong>
    alldnames = [];
    <strong>// iterate over key in the structure, calling an inline function</strong>
    structeach(circles,function(key,value) {
        <strong>// filter names using arrayfilter()</strong>
        matchednames = arrayfilter(value,function(obj) {
            return left(obj,1)=='d';
        });
        <strong>// for each matched name, append to 'alldnames' array</strong>
        arrayeach(matchednames,function(obj) {
           arrayappend(alldnames,obj);
        });
    });
    <strong>// here's the original "friends" array; notice it hasn't been altered by filtering</strong>
    writedump(circles.friends);
    <strong>// here's the new "d" names array</strong>
    writedump(alldnames);
&lt;/cfscript&gt;
           </pre>
        </div>
        <div class="example-block">
            <div class="title">Results</div>
                <cfscript>
                    // function to include only names that being with 'd'
                    function includeD(obj) {
                        return left(obj,1)=='d';
                    }
                    // set up my struct of arrays
                    'circles' = {
                        'friends': ['Lucas','Phil','Dave','Brian','Dillon'],
                        'coworkers': ['Tyler','Mike','Doug'],
                        'family': ['Dean','Jared','Jason']
                    };
                    // empty array to hold "d" names
                    alldnames = [];
                    // iterate over key in the structure, calling an inline function
                    structeach(circles,function(key,value) {
                        // filter names using arrayfilter()
                       	matchednames = arrayfilter(value,function(obj) {
                            return left(obj,1)=='d';
                        });
                        // for each matched name, append to 'alldnames' array
                        arrayeach(matchednames,function(obj) {
                           arrayappend(alldnames,obj);
                        });
                    });
                    writeoutput("<h3>Original 'Friends' Array</h3>");
                    // here's the original "friends" array; notice it hasn't been altered by filtering
                    writedump(circles.friends);
                    writeoutput("<h3>New Array of 'D' Names</h3>");
                    // here's the new "d" names array
                    writedump(alldnames);
                </cfscript>
            </div>
        </div>
    </body>
</html>