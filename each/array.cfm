<!doctype html>
<html>
    <head>
        <title>ArrayEach()</title>
        <link href="../css/reset.css" type="text/css" rel="stylesheet" />
        <link href="../css/style.css" type="text/css" rel="stylesheet" />
    </head>
    <body style="font-family:Helvetica,arial,sans-serif;font-size:1em;">
        <div class="example-block">
            <div class="title">ArrayEach()</div>
           <pre>
&lt;cfscript&gt;
    <strong>// names of my imaginary friends</strong>
    names = ['John','mary','JOseph','Glenda','Mike'];

    <strong>// named function
    // notice that the function takes one argument, the value of the current iteration of the array</strong>
    function makeLowercase(obj) {
        names[arrayfind(names,obj)] = lcase(obj);
    }
    
    <strong>//  run arrayeach() with an inline function</strong>
    arrayeach(names,function(obj) {
        names[arrayfind(names,obj)] = lcase(obj);
    });
    writedump(names);
    
    <strong>// run arrayeach() with a named function</strong>
    arrayeach(myarray,makeLowercase);
    writedump(myarray);
&lt;/cfscript&gt;
           </pre>
        </div>
        <div class="example-block">
            <div class="title">Results</div>
                <cfscript>
                    // names of my imaginary friends
                    names = ['John','mary','JOseph','Glenda','Mike'];
                    // named function
                    // notice that the function takes one argument, the value of the current iteration of the array
                    function makeLowercase(obj) {
                        names[arrayfind(names,obj)] = lcase(obj);
                    }
                    
                    //  run arrayeach() with an inline function
                    arrayeach(names,function(obj) {
                        names[arrayfind(names,obj)] = lcase(obj);
                    });
                    writeoutput('<h3>Method ##1: Named Function:</h3>');
                    writedump(names);
                    
                    writeoutput('<h3>Method ##2: Inline Function:</h3>');
                    // run arrayeach() with a named function
                    arrayeach(names,makeLowercase);
                    writedump(names);
                </cfscript>
            </div>
        </div>
    </body>
</html>