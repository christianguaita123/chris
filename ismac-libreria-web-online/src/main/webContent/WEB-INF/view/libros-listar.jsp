<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h1>Libros</h1>
      
                <button onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?opcion=1';return false;">
                Agregar
                </button>

      <table>
          <thead>
             <tr>   
              
                <th> idLibro</th>
                <th> titulo</th>
                <th> editorial</th>
                <th> numPaginas</th>
                <th> edicion</th>
                <th> idioma</th>
                <th> fechaPublicacion</th>
                <th> descripcion</th>
                <th> tipoPasta</th>
                <th> ISBN</th>
                <th> numEjemplares</th>
                <th> portada</th>
                <th> presentacion</th>
                <th> precio</th>
                <th> autor</th>
                <th> categoria</th>
                <th> Acciones</th>
                
             </tr>
          </thead>
          <tbody>
              <c:forEach var="item" items="${libros}">
              <tr>
                <td>${item.idLibro}</td>
                <td>${item.titulo}</td>
                <td>${item.editorial}</td>
                <td>${item.numPaginas}</td>
                <td>${item.edicion}</td>
                <td>${item.idioma}</td>
                <td>${fn:substring(item.fechaPublicacion,0,10)}</td>
                <td>${item.descripcion}</td>
                <td>${item.tipoPasta}</td>
                <td>${item.iSBN}</td>
                <td>${item.numEjemplares}</td>
                <td>                    
                   <img alt="portada de libro" width="150" height="150" src="${pageContext.request.contextPath}/resources/img/${item.portada}">
                </td>
                <td>${item.presentacion}</td>
                <td>${item.precio}</td>
                <td>${item.autor.nombre} ${item.autor.apellido}</td>
                <td>${item.categoria.categoria}</td>
                <td>
                     <button onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=1';return false;">
                     Actualizar
                     </button>
                     <button onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=2';return false;">
                     Eliminar
                     </button>
                </td>
                </tr>
              </c:forEach>
          </tbody>
      </table>

</body>
</html>