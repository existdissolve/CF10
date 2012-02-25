<!doctype html>
<html>
    <head>
        <title>StructEach()</title>
        <link href="../css/reset.css" type="text/css" rel="stylesheet" />
        <link href="../css/style.css" type="text/css" rel="stylesheet" />
    </head>
    <body style="font-family:Helvetica,arial,sans-serif;font-size:1em;">
        <div class="example-block">
            <div class="title">StructEach()</div>
           <pre>
&lt;cfscript&gt;
    <strong>// function that will be called for each key/value pair in structure</strong>
    function tellFavorite(key,value) {
        writeoutput('My favorite ' & key & ' is ' & value & '&lt;br /&gt;');
    }
    
    <strong>// structure of "favorites"</strong>
    favorites = {color:'green',food:'sushi',sport:'basketball'};
    
    <strong>// method #1: using a named function</strong>
    structeach(favorites,tellFavorite);
    
    <strong>// method #2: using an inline function</strong>
    structeach(favorites,function(key,value) {
        writeoutput('My favorite ' & key & ' is ' & value & '&lt;br /&gt;');
    });
&lt;/cfscript&gt;
           </pre>
        </div>
        <div class="example-block">
            <div class="title">Results</div>
                <cfscript>
					// function that will be called for each key/value pair in structure
                    function tellFavorite(key,value) {
                        writeoutput('My favorite ' & key & ' is ' & value & '<br />');
                    }
                    
                    // structure of "favorites"
                    favorites = {color:'green',food:'sushi',sport:'basketball'};
                    
                    writeoutput('<h3>Method ##1: Named Function:</h3>');
                    // method #1: using a named function
                    structeach(favorites,tellFavorite);
                    
                    writeoutput('<h3>Method ##2: Inline Function:</h3>');
                    // method #2: using an inline function
                    structeach(favorites,function(key,value) {
                        writeoutput('My favorite ' & key & ' is ' & value & '<br />');
                    });
				</cfscript>
            </div>
        </div>
    </body>
</html>