<%@page import="com.google.gson.Gson"%>
<%@page import="TO.TOEstudiantes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controllers.CtrlEstudiantes"%>
<% CtrlEstudiantes estudiantesCtrl = new CtrlEstudiantes();
String opcion = request.getParameter("opcion");
if("listar".equals(opcion)){
    ArrayList<TOEstudiantes> estudiantes = estudiantesCtrl.consultarEstudiantes();
    out.print(new Gson().toJson(estudiantes));
}else{
    out.print("opcion no valida");
}
%>

