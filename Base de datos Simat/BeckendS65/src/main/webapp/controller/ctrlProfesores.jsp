<<%@page import="com.google.gson.Gson"%>
<%@page import="TO.TOProfesores"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controllers.CtrlProfesores"%>
<% CtrlProfesores profesoresCtrl = new CtrlProfesores();
String opcion = request.getParameter("opcion");
if("listar".equals(opcion)){
    ArrayList<TOProfesores> profesores = profesoresCtrl.consultarProfesores();
    out.print(new Gson().toJson(profesores));
}else{
    out.print("opcion no valida");
}
%>
