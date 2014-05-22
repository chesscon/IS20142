
<%@ page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UNAM F.Ciencias | Diseño de Interfaces [2014-2]</title>
    
    <link  href="${resource(dir: 'css', file: 'foundation.css')}" rel="stylesheet" type="text/css" />
     <link  href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet" type="text/css" />

    
    <script src="${resource(dir: 'js', file: 'modernizr.js')}" type="text/javascript"></script>
      

    <style>
        #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
    </style>
</head>
<body>

<div class="row">
    <div class="large-12 columns text-center">
        <h1>Brookline Adult & Community Education</h1>
        <h2>English As a Second Language Placement Test</h2>
    </div>
</div>

<div class="row">

    <div class="alert-box">
        <h5> Please read the story and SELECT the correct answer.</h5>
    </div>

    <div id="cloze-text" class="large-8 medium-8 columns">
        <p>
            My name is Lori. I work during the day and go
            &nbsp;&nbsp;
            <select name="q21" id="question21" class="small-2">
                <option value="x" selected>1</option>
                <option value="a">in</option>
                <option value="b">at</option>
                <option value="c">to</option>
            </select>&nbsp;&nbsp;
            school at night. I
            &nbsp;&nbsp;
            <select name="q22" id="question22" class="small-2">
                <option value="x" selected>2</option>
                <option value="a">work</option>
                <option value="b">works</option>
                <option value="c">working</option>
            </select>&nbsp;&nbsp;
            as a manager.
            &nbsp;&nbsp;
            <select name="q23" id="question23" class="small-2">
                <option value="x" selected>3</option>
                <option value="a">Her</option>
                <option value="b">My</option>
                <option value="c">His</option>
            </select>&nbsp;&nbsp;
            boss is very kind. Everybody likes
            &nbsp;&nbsp;
            <select name="q24" id="question24" class="small-2">
                <option value="x" selected>4</option>
                <option value="a">her</option>
                <option value="b">them</option>
                <option value="c">his</option>
            </select>&nbsp;&nbsp;
            very much. I study nursing at school. I like
            &nbsp;&nbsp;
            <select name="q25" id="question25" class="small-2">
                <option value="x" selected>5</option>
                <option value="a">go</option>
                <option value="b">to go</option>
                <option value="c">to going</option>
            </select>&nbsp;&nbsp;
            to school early so I can study by
            &nbsp;&nbsp;
            <select name="q26" id="question26" class="small-2">
                <option value="x" selected>6</option>
                <option value="a">herself</option>
                <option value="b">himself</option>
                <option value="c">myself</option>
            </select>&nbsp;&nbsp;
            before class. The class is difficult, so I
            &nbsp;&nbsp;
            <select name="q27" id="question27" class="small-2">
                <option value="x" selected>7</option>
                <option value="a">must</option>
                <option value="b">may</option>
                <option value="c">can</option>
            </select>&nbsp;&nbsp;
            study hard if I
            &nbsp;&nbsp;
            <select name="q28" id="question28" class="small-2">
                <option value="x" selected>8</option>
                <option value="a">will</option>
                <option value="b">wanted</option>
                <option value="c">want</option>
            </select>&nbsp;&nbsp;
            to do well.
        </p>

        <br/>

        <p>
            After class,
            &nbsp;&nbsp;
            <select name="q29" id="question29" class="small-2">
                <option value="x" selected>9</option>
                <option value="a">any</option>
                <option value="b">the</option>
                <option value="c">my</option>
            </select>&nbsp;&nbsp;
            friends and I usually go out for something to eat. Last night we
            &nbsp;&nbsp;
            <select name="q30" id="question30" class="small-2">
                <option value="x" selected>10</option>
                <option value="a">went</option>
                <option value="b">go</option>
                <option value="c">gone</option>
            </select>&nbsp;&nbsp;
            to a restaurant
            &nbsp;&nbsp;
            <select name="q31" id="question31" class="small-2">
                <option value="x" selected>11</option>
                <option value="a">across to</option>
                <option value="b">across</option>
                <option value="c">across from</option>
            </select>&nbsp;&nbsp;
            our school. We like to go there because it's
            &nbsp;&nbsp;
            <select name="q32" id="question32" class="small-2">
                <option value="x" selected>12</option>
                <option value="a">the cheapest</option>
                <option value="b">too cheap</option>
                <option value="c">cheaper</option>
            </select>&nbsp;&nbsp;
            place in the neighborhood and the food
            &nbsp;&nbsp;
            <select name="q33" id="question33" class="small-2">
                <option value="x" selected>13</option>
                <option value="a">was</option>
                <option value="b">good</option>
                <option value="c">is</option>
            </select>&nbsp;&nbsp;
            very good. I usually order
            &nbsp;&nbsp;
            <select name="q34" id="question34" class="small-2">
                <option value="x" selected>14</option>
                <option value="a">cup of coffee</option>
                <option value="b">a cup coffee</option>
                <option value="c">a cup of coffee</option>
            </select>&nbsp;&nbsp;
            and a hamburger. This restaurant
            &nbsp;&nbsp;
            <select name="q35" id="question35" class="small-2">
                <option value="x" selected>15</option>
                <option value="a">have</option>
                <option value="b">has</option>
                <option value="c">had</option>
            </select>&nbsp;&nbsp;
            the best hamburgers in town!
        </p>
    </div>
</div>

<div class="row">
    <button id="finish" class="radius">Finish</button>
</div>

<script src="${resource(dir: 'js', file: 'jquery-1.10.2.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'foundation.min.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'jquery-ui.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'solutions.js')}" type="text/javascript"></script>

<script>
    $(document).foundation();

        var Score = 0;
        var Evaluation = "No evaluation";

        if (Score>=0 && Score<20){
            Evaluation = "Beginning English";
        }
        else if (Score>=20 && Score<30){
            Evaluation = "Intermediate English";
        }
        else if (Score>=30 && Score<43){
            Evaluation = "High Intermediate English";
        }
        else if (Score>=43 && Score<=50){
            Evaluation = "Advanced English";
        }
        else{
            Evaluation = "ERROR: Cannot stablish evaluation";
        }

    $("#finish").click(function(){
        //TODO: Calculate Score
        Score = 40; // SPDG
        alert("Your English level is: " + Evaluation);
    });

    $(function() {
        $( ".ui-widget-content" ).draggable({
            revert: false,
            snap:   "select"
        });

        $("select.small-2").droppable({
            accept: ".ui-widget-content",
            drop: function(event, ui){
                var answr = ui.draggable.children().first().html();
                var quest = $(this).children().first().html();

                if(Answers[quest] == answr){
                    Score++;
                    console.log("Correcto!")
                }
                else{
                    console.log("Incorrecto!!")
                }
                console.log("PREGUNTA: " + quest);
                console.log("RESPUESTA: " + answr);

                console.log("SCORE: " + Score);
            }
        });
    });
</script>
</body>
</html>

