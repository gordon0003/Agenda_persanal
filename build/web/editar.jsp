import java.sql.Time;

<%@page import="com.emergentes.nota.Nota" %>

<%
    Nota reg = (Nota)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de registro</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>"  readonly></td>
                    
                </tr>
                <tr>
                    <td>Dia</td>
                    <td><select type="text"   name="dia" value="<%= reg.getDia() %>">
                                    <option value='Lunes'>Lunes</option>
                                    <option value='Martes'>Martes</option>
                                    <option value='Miercoles'>Miercoles</option>
                                    <option value='Jueves'>Jueves</option>
                                    <option value='Viernes'>Viernes</option>
                                    <option value='Sabado'>Sabado</option> 
                                    <option value='Domingo'>Domingo</option>
                                </select>                    
                </tr>
                <tr>
                    <td>Mes</td>
                            <td>
                                <select type="text"   name="mes" value="<%= reg.getMes() %>">
                                    <option value='Enero'>Enero</option>
                                    <option value='Febrero'>Febrero</option>
                                    <option value='Marzo'>Marzo</option>
                                    <option value='Abril'>Abril</option>
                                    <option value='Mayo'>Mayo</option>
                                    <option value='Junio'>Junio</option> 
                                    <option value='Julio'>Julio</option>
                                    <option value='Agosto'>Agosto</option>
                                    <option value='Septiembre'>Septiembre</option>
                                    <option value='Octubre'>Octubre</option>
                                    <option value='Novienbre'>Novienbre</option>
                                    <option value='Diciembre'>Diciembre</option>
                                </select></td>                  
                </tr>
                <tr>
                    <td>Hora</td>
                   <td>
                        <input type="time" name="hora" value="<%= reg.getHora() %>" size="5"> </td>
                </tr>
                <tr>
                    <td>Actividad</td>
                    <td><input type="text" name="actividad" value="<%= reg.getActividad() %>"></td>
                    
                </tr>
                <tr>
                    <td>Completado</td>
                    <td><select type="text"   name="completado" value="<%= reg.getCompletado() %>">
                                    <option value='Si'>Si</option>
                                    <option value='No'>No</option>
                                </select>                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                    
                </tr> 
            </table>                
        </form>
    </body>
</html>
