<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
      <title><g:layoutTitle default="Escuela de Ingles"/></title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Sistema de registro de inscripciones para una escuela de inglés">
      <meta name="author" content="Salmones 2014">
      
      <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
      <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
      <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
      
      <!-- Enlaces a Bootstrpa: -->
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
      
      <!-- Icons -->
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'general_foundicons.css')}" 
            media="screen" type="text/css" >
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'social_foundicons.css')}" 
            media="screen" type="text/css" >
            
      <link href="http://fonts.googleapis.com/css?family=Chewy" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Terminal+Dosis+Light" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Maven+Pro" rel="stylesheet" type="text/css">

      <link  href="${resource(dir: 'css', file: 'custom.css')}" rel="stylesheet" type="text/css" />
      
      <g:layoutHead/>
      <g:javascript library="application"/>
      <r:layoutResources />
      
</head>
<div id="divBoxed" class="container">

  <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

  <header class="divPanel notop nobottom">

            <!-- CHESSCON
              DIV para LOGOTIPO y Slogan de la escuela
            -->
            <div class="row-fluid">
                <div class="span6" >
                    <div id="divLogo">
                        <a href="index.html" id="divSiteTitle">Logo Tipo Escuela</a><br />
                        <a href="index.html" id="divTagLine">Escuela de Inglés ...</a>
                    </div>
                </div>

                <div class="span4" style="border: solid 2px blue; padding: 15px;
                margin-top: 30px; font-size: 1.3em">
                    <div id="divDatos" class="center">
                        <div class="center">Datos de Contacto de la escuela</div>
                        <div >Aquí iría el teléfono y otros datos ...</div>
                    </div>
                </div>
            </div>  <!-- FIN LOGOTIPO Y SLOGAN -->

            <!-- CHESSCON
              LOGIN
              Div donde se carga lo correspondiente al Login
            -->
            <div class="row-fluid">
              <div class="span12">
                <div id="divLogin" >
                  
                  <ul class="nav span3 pull-right">
                    <li class="dropdown text-right" id="menuLogin">
                      <a class="dropdown-toggle text-right" href="#" data-toggle="dropdown" id="navLogin" style="margin-left: 15em;">Login</a>
                        <div class="dropdown-menu" style="padding:17px;" >
                          <form class="form" id="formLogin"> 
                            <input name="username" id="username" type="text" placeholder="Username"> 
                            <input name="password" id="password" type="password" placeholder="Password"><br>
                            <button type="button" id="btnLogin" class="btn">Login</button>
                          </form>
                        </div>
                    </li>
                  </ul>

                </div>
              </div>
            </div> <!-- FIN LOGIN -->

            <!-- CHESSCON
              MENU
              Aquí esta todo lo correspondiente al menú que aparece arriba a la derecha
            -->
            <div class="row-fluid">
                <div class="span12">
              
                    <div id="divMenuRight" class="pull-right">
                    <nav class="navbar">
                        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            NAVIGATION <span class="icon-chevron-down icon-white"></span>
                        </button>
                        <div class="nav-collapse collapse">
                            <ul class="nav nav-pills ddmenu">
                                <li class="dropdown"><a href="index.html">Home</a></li>
                                <li class="dropdown">
                                    <a href="page.html" class="dropdown-toggle">Page <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle">Dropdown Item &nbsp;&raquo;</a>
                                            <ul class="dropdown-menu sub-menu">
                                                <li><a href="#">Dropdown Item</a></li>
                                                <li><a href="#">Dropdown Item</a></li>
                                                <li><a href="#">Dropdown Item</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Dropdown Item</a></li>
                                        <li><a href="#">Dropdown Item</a></li>
                                        <li><a href="#">Dropdown Item</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="grid.html">Grid</a></li>
                                <li class="dropdown active"><a href="simple.html">Simple</a></li>
                            </ul>
                        </div>
                    </nav>
                    </div>

              </div>
            </div> <!-- FIN MENU -->

            <!-- CHESSCON
              MARGEN de separación entre el encabezado (logotipo y menu)
              y el contenido de la pagina
            -->
            <div class="row-fluid">
                <div class="span12">
                    <div id="contentInnerSeparator"></div>
                </div>
            </div>
    </header>

    <!--CHESSCON 
      Contenido de la página
    -->
    <div class="contentArea">

        <div class="divPanel notop page-content">

            <!-- CHESSCON 
              RUTA DE NAVEGACION
              Indica en que parte (seccion) del sitio se encuentra el usuario
            -->
            <div class="breadcrumbs">
                <a href="index.html">Home</a> &nbsp;/&nbsp; <span>Simple</span>
            </div>



            <div class="row-fluid">

              <div class="span12 text-center" id="formularioEjemplo">
                <form class="form-horizontal">
                  <fieldset>

                  <!-- Form Name -->
                  <legend>Form Name</legend>

                  <!-- Text input-->
                  <div class="control-group">
                    <label class="control-label" for="textinput">Text Input</label>
                    <div class="controls">
                      <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="input-xlarge">
                      <p class="help-block">help</p>
                    </div>
                  </div>

                  <!-- Text input-->
                  <div class="control-group">
                    <label class="control-label" for="textinput">Text Input</label>
                    <div class="controls">
                      <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="input-xlarge">
                      <p class="help-block">help</p>
                    </div>
                  </div>

                  <!-- Text input-->
                  <div class="control-group">
                    <label class="control-label" for="textinput">Text Input</label>
                    <div class="controls">
                      <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="input-xlarge">
                      <p class="help-block">help</p>
                    </div>
                  </div>

                  <!-- Select Basic -->
                  <div class="control-group">
                    <label class="control-label" for="selectbasic">Select Basic</label>
                    <div class="controls">
                      <select id="selectbasic" name="selectbasic" class="input-xlarge">
                        <option>Option one</option>
                        <option>Option two</option>
                      </select>
                    </div>
                  </div>

                  <!-- Multiple Radios (inline) -->
                  <div class="control-group">
                    <label class="control-label" for="radios">Inline Radios</label>
                    <div class="controls">
                      <label class="radio inline" for="radios-0">
                        <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                        1
                      </label>
                      <label class="radio inline" for="radios-1">
                        <input type="radio" name="radios" id="radios-1" value="2">
                        2
                      </label>
                      <label class="radio inline" for="radios-2">
                        <input type="radio" name="radios" id="radios-2" value="3">
                        3
                      </label>
                      <label class="radio inline" for="radios-3">
                        <input type="radio" name="radios" id="radios-3" value="4">
                        4
                      </label>
                    </div>
                  </div>

                  <!-- Multiple Radios -->
                  <div class="control-group">
                    <label class="control-label" for="radios">Multiple Radios</label>
                    <div class="controls">
                      <label class="radio" for="radios-0">
                        <input type="radio" name="radios" id="radios-0" value="Option one" checked="checked">
                        Option one
                      </label>
                      <label class="radio" for="radios-1">
                        <input type="radio" name="radios" id="radios-1" value="Option two">
                        Option two
                      </label>
                    </div>
                  </div>

                  <!-- File Button --> 
                  <div class="control-group">
                    <label class="control-label" for="filebutton">File Button</label>
                    <div class="controls">
                      <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                  </div>

                  <!-- Appended checkbox -->
                  <div class="control-group">
                    <label class="control-label" for="appendedcheckbox">Appended Checkbox</label>
                    <div class="controls">
                      <div class="input-append">
                        <input id="appendedcheckbox" name="appendedcheckbox" class="span2" type="text" placeholder="placeholder">
                        <span class="add-on">
                          <input type="checkbox">
                        </span>
                      </div>
                      <p class="help-block">help</p>
                    </div>
                  </div>

                  </fieldset>
                  </form>

              </div>

                <div class="span8" id="divMain">

                    <h1>Simple</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                    Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, 
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>                                 
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus leo ante, 
                    consectetur sit amet vulputate vel, dapibus sit amet lectus. 
                    Etiam varius dui eget lorem elementum eget mattis sapien interdum. In hac habitasse platea dictumst. </p>

                </div>
                <div class="span4 sidebar">

                    <div class="sidebox">
                        <h3 class="sidebox-title">Sample Sidebar Content</h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and <a href="http://www.oswt.co.uk/">typesetting industry</a>. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.</p>                       
                    </div>
                    
                </div>
            </div>

            <div id="footerInnerSeparator"></div>
        </div>
    </div> <!-- FIN CONTENIDO -->

    <div id="footerOuterSeparator"></div>

    <div id="divFooter" class="footerArea">

        <div class="divPanel">

            <div class="row-fluid">
                <div class="span3" id="footerArea1">
                
                    <h3>About Company</h3>

                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.</p>
                    
                    <p> 
                        <a href="#" title="Terms of Use">Terms of Use</a><br />
                        <a href="#" title="Privacy Policy">Privacy Policy</a><br />
                        <a href="#" title="FAQ">FAQ</a><br />
                        <a href="#" title="Sitemap">Sitemap</a>
                    </p>

                </div>
                <div class="span3" id="footerArea2">

                    <h3>Recent Blog Posts</h3> 
                    <p>
                        <a href="http://www.oswt.co.uk/" title="">Lorem Ipsum is simply dummy text</a><br />
                        <span style="text-transform:none;">2 hours ago</span>
                    </p>
                    <p>
                        <a href="http://www.oswt.co.uk/" title="">Duis mollis, est non commodo luctus</a><br />
                        <span style="text-transform:none;">5 hours ago</span>
                    </p>
                    <p>
                        <a href="http://www.oswt.co.uk/" title="">Maecenas sed diam eget risus varius</a><br />
                        <span style="text-transform:none;">19 hours ago</span>
                    </p>
                    <p>
                        <a href="http://www.oswt.co.uk/" title="">VIEW ALL POSTS</a>
                    </p>

                </div>
                <div class="span3" id="footerArea3">

                    <h3>Sample Footer Content</h3> 
                    <p>Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                </div>
                <div class="span3" id="footerArea4">

                    <h3>Get in Touch</h3>  
                                                               
                    <ul id="contact-info">
                    <li>                                    
                        <i class="general foundicon-phone icon"></i>
                        <span class="field">Phone:</span>
                        <br />
                        (123) 456 7890 / 456 7891                                                                      
                    </li>
                    <li>
                        <i class="general foundicon-mail icon"></i>
                        <span class="field">Email:</span>
                        <br />
                        <a href="mailto:info@yourdomain.com" title="Email">info@yourdomain.com</a>
                    </li>
                    <li>
                        <i class="general foundicon-home icon" style="margin-bottom:50px"></i>
                        <span class="field">Address:</span>
                        <br />
                        123 Street<br />
                        12345 City, State<br />
                        Country
                    </li>
                    </ul>

                </div>
            </div>

            <br /><br />
            <div class="row-fluid">
                <div class="span12">
                    <p class="copyright">
                        Copyright © 2013 Your Company. All Rights Reserved. Thanks to <a href="http://www.oswt.co.uk/">oswt</a>
                    </p>

                    <p class="social_bookmarks">
                        <a href="#"><i class="social foundicon-facebook"></i> Facebook</a>
			<a href="https://twitter.com/oswt"><i class="social foundicon-twitter"></i> Twitter</a>
			<a href="#"><i class="social foundicon-pinterest"></i> Pinterest</a>
			<a href="#"><i class="social foundicon-rss"></i> Rss</a>
                    </p>
                </div>
            </div>

        </div>
    </div>
</div>
<br /><br /><br />

<script src="scripts/jquery-1.8.2.min.js" type="text/javascript"></script> 
<script src="scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/default.js" type="text/javascript"></script>


</body>
</html>