<html>

<head>
    <title>Info</title>
</head>

<body>

    <p>{$users[0]}</p>
    <h2>{$a}</h2>
    <h3>{$str}</h3>

    <h3>{html_select_date display_days=true}</h3>

    {counter start=0 skip=3}<br />
    {counter}<br />
    {counter}<br />
    {counter}<br />
    {counter}<br />
    {counter}<br />

    <h2>{$foo[2]}</h2>

    {assign var=yyy value=[1,2,3]}
    <p>{$yyy[1]}</p>

    {assign var=a value=['y'=>'yellow','b'=>'blue']}
    <p>{$a.y}</p>
    {* <p>{$a+1}</p> *}

    {assign var=b value=[1,[9,8],3]}
    <p>{$b[1][0]}</p>
    <p>{$b.1.0}</p>

    {* {assign $var = bar value = 0} *}
    {* <p>{$a + {$foo[1] + 2}}</p> *}
    {* <p>{$bar}</p> *}

    {* <p>{$arr[0][0]}</p> *}
    <p>{"Aayush"}</p>

    <h2>{"Reserveds variable"}</h2>
    <p>{$smarty.server.SERVER_NAME}</p>
    {* <p>{$smarty.get.page}</p>
<p>{$smarty.post.page}</p> *}
    {* <p>{$smarty.cookies.username}</p> *}

    <p>{cycle values="one,two,`$smarty.config.myval`"}</p>

    <h2>{"Maths"}</h2>
    {assign var=y value=[1,2,3]}
    {assign var=sum value=$num1+$num2}
    {$add=$num1+2}

    <p>{$add}</p>
    <p>{$sum}</p>

    <p>{$num1+$num2}</p>


    <h2>{"Variables"}</h2>

    Hello {$firstname} {$lastname}, glad to see you can make it.
    <br />
    This weeks meeting is in {$meetingPlace}.

    <h2>{"Associative array"}</h2>

    {$Contacts.fax}<br />
    {$Contacts}<br />
    {$Contacts.phone.home}<br />
    {$Contacts.phone.cell}<br />

    <h2>{"function attribute syntax"}</h2>
    <p>{include file="header.tpl"}</p>
    <p>{assign var=str value=substr($bar,0,5)}</p>
    {* <p>{$str}</p> *}

    <h2>{"Time"}</h2>
    <p>{$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}</p>

    <div id="footer">Powered by Smarty {$smarty.version}</div>
    <div id="footer">{$smarty.current_dir}</div>

    <h2>{"Modifier"}</h2>
    <p>{$string|upper}</p>
    <p>{$string|truncate:12:"..."}</p>
    {* <p>{$string|@count}</p> *}
    {$string}
    {$string|capitalize}
    {* {$string|capitalize:false} *}

    <h2>{"Variable Modifiers:cat"}</h2>

    <p>{$articleTitle|cat:' yesterday.'}</p>
    <p>{$articleTitle|count_characters}</p>
    <p>{$articleTitle|count_characters:true}</p>

    <h2>{"count_paragraphs"}</h2>
    <p>{$articleTitle1}</p>
    <p>{$articleTitle1|count_paragraphs}</p>

    <h2>{"count_sentences"}</h2>
    <p>{$articleTitle1|count_sentences}</p>

    <h2>{"count_words"}</h2>
    <p>{$articleTitle1|count_words}</p>

    <h2>{"Date Formstes"}</h2>
    {$smarty.now|date_format} <br>
    {$smarty.now|date_format:"%D"} <br>
    {$smarty.now|date_format:$config.date} <br>
    {$yesterday|date_format} <br>
    {$yesterday|date_format:"%A, %B %e, %Y"} <br>
    {$yesterday|date_format:$config.time}

    <h2>{"Default"}</h2>

    {$articleTitle|default:'no title'} <br>
    {$myTitle|default:'no title'} <br>
    {$email|default:'No email address available'}

    <h2>{"Escapse"}</h2>

    {$articleTitle2} <br>
    {$articleTitle2|escape} <br>
    <a href="?title={$articleTitle2|escape:'url'}">click here</a>



    <h2>{"indent"}</h2>

    {* {$articleTitle|indent} *}

    {* {$articleTitle|indent:10} *}

    {$articleTitle|indent:1:"\t"}

    <h2>{"Lower"}</h2>

    {$articleTitle|lower}

</body>

</html>