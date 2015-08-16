package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- Page title -->\n");
      out.write("        <title>to Do List</title>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function ajaxpage(url, containerid) {\n");
      out.write("                var requestUrl = url;\n");
      out.write("                $.ajax({\n");
      out.write("                    url: requestUrl,\n");
      out.write("                    dataType: 'html',\n");
      out.write("                    success: function(data) {\n");
      out.write("                        $('#' + containerid).html(data);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <!--<link rel=\"shortcut icon\" type=\"image/ico\" href=\"favicon.ico\" />-->\n");
      out.write("        <!-- Vendor styles -->\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"css/metisMenu.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"css/sweet-alert.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/awesome-bootstrap-checkbox.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-datetimepicker.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-multiselect.css\">\n");
      out.write("\n");
      out.write("        <!-- App styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/todo.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fa_animation.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pe-icon-7-stroke.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/xeditable.css\">\n");
      out.write("        <script src=\"js/libs/angular.min.js\"></script>\n");
      out.write("        <script src=\"js/libs/xeditable.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            var app = angular.module(\"app\", [\"xeditable\"]);\n");
      out.write("\n");
      out.write("            app.run(function(editableOptions) {\n");
      out.write("                editableOptions.theme = 'bs3';\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            app.controller('Ctrl', function($scope) {\n");
      out.write("                $scope.user = {\n");
      out.write("                    name: 'awesome user'\n");
      out.write("                };\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("              <script src=\"js/html5shiv.min.js\"></script>\n");
      out.write("              <script src=\"js/respond.min.js\"></script>\n");
      out.write("            <![endif]-->\n");
      out.write("        <style>\n");
      out.write("            * html #rightcolumn{ /*IE only style*/\n");
      out.write("                height: 400px;\n");
      out.write("            }\n");
      out.write("            div[ng-app] { margin: 50px; }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"\">\n");
      out.write("\n");
      out.write("        <!--[if lt IE 7]>\n");
      out.write("        <p class=\"alert alert-danger\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> to improve your experience.</p>\n");
      out.write("        <![endif]--> \n");
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Navigation start -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/site_menu.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Navigation end --> \n");
      out.write("\n");
      out.write("        <!-- Main Wrapper -->\n");
      out.write("        <div style=\"min-height: 914px;\" id=\"wrapper\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"normalheader transition animated fadeIn\">\n");
      out.write("                <div class=\"hpanel\">\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <a class=\"small-header-action\" href=\"\">\n");
      out.write("                            <div class=\"clip-header\">\n");
      out.write("                                <i class=\"fa fa-arrow-up\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <div id=\"hbreadcrumb\" class=\"pull-right m-t-lg\">\n");
      out.write("                            <ol class=\"hbreadcrumb breadcrumb\">\n");
      out.write("                                <li><a href=\"#\">Home</a></li>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>Home</span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"active\">\n");
      out.write("                                    <span>Home </span>\n");
      out.write("                                </li>\n");
      out.write("                            </ol>\n");
      out.write("                        </div>\n");
      out.write("                        <h2 class=\"font-light m-b-xs\">\n");
      out.write("                            Home\n");
      out.write("                        </h2>\n");
      out.write("                        <small>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est </small>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("\n");
      out.write("            <div class=\"content animate-panel\">  \n");
      out.write("                <!--                <div class=\"row\">\n");
      out.write("                                    <div style=\"animation-delay: 0.1s;\" class=\"col-lg-12 text-center m-t-md animated-panel zoomIn\">\n");
      out.write("                                        <h2>Call Center Home </h2>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>-->\n");
      out.write("                <div class=\"row\" id=\"rightcolumn\">\n");
      out.write("                    <div ng-app=\"app\" ng-controller=\"Ctrl\">\n");
      out.write("                        <a href=\"#\" editable-text=\"user.name\">{{ user.name || 'empty' }}</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--        footer strat-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/footer.jsp", out, false);
      out.write("\n");
      out.write("        <!--footer end-->\n");
      out.write("        <!-- Vendor scripts --> \n");
      out.write("\n");
      out.write("        <script src=\"js/jquery_006.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap.js\"></script> \n");
      out.write("        <script src=\"js/jquery-ui.js\"></script> \n");
      out.write("        <script src=\"js/metisMenu.js\"></script> \n");
      out.write("        <!--        <script src=\"js/icheck.js\"></script> -->\n");
      out.write("        <script src=\"js/jquery.js\"></script> \n");
      out.write("        <script src=\"js/index.js\"></script> \n");
      out.write("        <!--        <script src=\"js/sweet-alert.js\"></script> -->\n");
      out.write("        <script src=\"js/bootstrap-select.js\"></script> \n");
      out.write("        <script src=\"js/moment.min.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-datetimepicker.min.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-multiselect.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-multiselect-collapsible-groups.js\"></script> \n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- App scripts --> \n");
      out.write("        <script src=\"js/homer.js\"></script> \n");
      out.write("        <script src=\"js/todo.js\"></script> \n");
      out.write("        <!--modal display start--> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
