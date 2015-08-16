package org.apache.jsp.correct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" ng-app=\"todo\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- Page title -->\n");
      out.write("        <title>to Do List</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Vendor styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"css/animate.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery-ui.min.css\">\n");
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
      out.write("        <link rel=\"stylesheet\" href=\"css/common.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body ng-controller=\"TodoCtrl\" ng-init=\"init()\">\n");
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
      out.write("                    <div class=\"container\" ng-controller=\"TodoCtrl\" id=\"playground\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xs-3\">\n");
      out.write("                                <div class=\"list-group\">\n");
      out.write("                                    <a href=\"#\" ng-repeat=\"todos in model\" class=\"list-group-item\" ng-class=\"{'active' : currentShow === $index}\" ng-click=\"changeTodo($index)\" >\n");
      out.write("                                        <span class=\"badge\">{{todos.list.length}}</span>\n");
      out.write("                                        {{todos.name}}\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xs-6\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-xs-7\">\n");
      out.write("                                        <div class=\"input-group\">\n");
      out.write("                                            <span class=\"input-group-btn\">\n");
      out.write("                                                <button class=\"btn btn-default\" type=\"button\"><span class=\"glyphicon glyphicon-search\"></span></button>\n");
      out.write("                                            </span>\n");
      out.write("                                            <input type=\"search\" class=\"form-control\" placeholder=\"Search\" ng-model=\"todoSearch\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-xs-5\">\n");
      out.write("                                        <ul class=\"nav nav-pills todo-filter\">\n");
      out.write("                                            <li ng-class=\"{'active' : show == 'All' }\" ng-click=\"show='All'\"><a href=\"#\">All</a></li>\n");
      out.write("                                            <li ng-class=\"{'active' : show == 'Incomplete' }\" ng-click=\"show='Incomplete'\"><a href=\"#\">Incomplete</a></li>\n");
      out.write("                                            <li ng-class=\"{'active' : show == 'Complete' }\" ng-click=\"show='Complete'\"><a href=\"#\">Complete</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\" id=\"todoAdd\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <input class=\"todoField\" id=\"newTodoField\" type=\"text\" ng-model=\"newTodo\" placeholder=\"Add New Todo\" ng-enter>\n");
      out.write("                                        <button id=\"todoSubmit\" class=\"btn btn-default\" ng-click=\"addTodo()\">Add</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <ul class=\"list-unstyled\" ng-repeat=\"todos in model track by $index\" ui-sortable=\"todoSortable\" ng-model=\"todos.list\" ng-show=\"$index === currentShow\">\n");
      out.write("                                        <li class=\"todoTask\" ng-repeat=\"todo in todos.list | filter:showFn | filter :todoSearch \">\n");
      out.write("                                            <input class=\"todoCheckbox\" ng-model=\"todo.isDone\" type=\"checkbox\">\n");
      out.write("                                            <label class=\"todoCheckboxlabel\" ></label>\n");
      out.write("                                        <edit-in-place value=\"todo.taskName\"></edit-in-place>\n");
      out.write("                                        <button type=\"button\" class=\"close pull-right\" aria-hidden=\"true\" ng-click=\"deleteTodo(todo)\">&times;</button>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"debug\">\n");
      out.write("                                <p class=\"text-info\">{{ model | json}}</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
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
      out.write("\n");
      out.write("        <script src=\"js/jquery_006.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap.js\"></script> \n");
      out.write("        <script src=\"js/libs/angular.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-ui.js\"></script> \n");
      out.write("        <script src=\"js/libs/jquery.ui.touch-punch.min.js\"></script>\n");
      out.write("        <script src=\"js/libs/angular-local-storage.min.js\"></script>\n");
      out.write("        <script src=\"js/libs/sortable.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/app.js\"></script>\n");
      out.write("        <script src=\"js/metisMenu.js\"></script> \n");
      out.write("        <script src=\"js/jquery.js\"></script> \n");
      out.write("        <script src=\"js/index.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-select.js\"></script> \n");
      out.write("        <script src=\"js/moment.min.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-datetimepicker.min.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-multiselect.js\"></script> \n");
      out.write("        <script src=\"js/bootstrap-multiselect-collapsible-groups.js\"></script> \n");
      out.write("        <script src=\"js/directives/angular.editInPlace.js\"></script>\n");
      out.write("        <script src=\"js/directives/angular.ngEnter.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- App scripts --> \n");
      out.write("        <script src=\"js/homer.js\"></script> \n");
      out.write("        <script src=\"js/todo.js\"></script> \n");
      out.write("        <!--modal display start--> \n");
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
