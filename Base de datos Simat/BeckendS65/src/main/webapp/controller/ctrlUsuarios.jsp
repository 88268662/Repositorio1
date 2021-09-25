<%@page import="com.google.gson.Gson"%>
<%@page import="TO.TOUsuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controllers.CtrlUsuarios"%>
<% CtrlUsuarios usuariosCtrl = new CtrlUsuarios();
String opcion = request.getParameter("opcion");
if("listar".equals(opcion)){
    ArrayList<TOUsuarios> usuarios = usuariosCtrl.consultarUsuarios();
    out.print(new Gson().toJson(usuarios));
}else{
    out.print("opcion no valida");
}
%>

