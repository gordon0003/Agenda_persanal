<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.nota.Nota" %>
<%
    if(session.getAttribute("listaper") == null){
        ArrayList<Nota> la = new ArrayList<Nota>();
        session.setAttribute("listaper", la);
    
    }
    ArrayList<Nota> lista = (ArrayList<Nota>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agenda 2021</h1>
                <a href="MainServlet?op=nuevo" >Nueva tarea</a>
                <br>
                <br>
        <table border="1" cellspacing="0">
            <tr>
                <th>Nº</th>
                <th>Dia</th>
                <th>Mes</th>
                <th>Hora</th>
                <th>Actividad</th>
                <th>Completado</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <%
            if(lista != null){
                for (Nota item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDia() %></td>
                <td><%= item.getMes() %></td>
                <td><%= item.getHora() %></td>
                <td><%= item.getActividad() %></td>
                <td><%= item.getCompletado() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Pusa aqui</a> </td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick="return(confirm('Esta seguro de eliminar??'))"
                       >Eliminar</a></td>
                
            </tr>      
            <%        
                    }
            }
            %>
            
        </table>
    </body>
</html>
