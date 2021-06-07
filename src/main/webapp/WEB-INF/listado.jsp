<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Listado de Personas</title>
    </head>
    <body>
        <div class="container">

            <button type="button" class="btn btn-success mt-5 ml-5"  data-mdb-toggle="modal" data-mdb-target="#exampleModal">Agregar</button>
            <table class="table table-hover mt-5">
                <thead class="table-dark">
                <th>id</th>
                <th>name</th>
                <th>last name</th>
                <th>email</th>
                <th>phone</th>
                <th>editar</th>
                <th>borrar</th>
                </thead>
                <c:forEach var="persona" items="${personas}" >
                    <tr>
                        <td>${persona.id}</td>
                        <td>${persona.name}</td>
                        <td>${persona.last_name}</td>
                        <td>${persona.email}</td>
                        <td>${persona.phone}</td>
                        <td><button type="button" class="btn btn-warning">Editar</button></td>
                        <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                    </tr>
                </c:forEach>
            </table> 
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar persona</h5>
                        <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-outline">
                            <input type="text" id="typeText" class="form-control" name="name" />
                            <label class="form-label" for="typeText">Name</label>
                        </div>
                         <div class="form-outline">
                             <input type="text" id="typeText" class="form-control" name="last_name" />
                            <label class="form-label" for="typeText">Last name</label>
                        </div>
                         <div class="form-outline">
                             <input type="text" id="typeText" class="form-control" name="email" />
                            <label class="form-label" for="typeText">email</label>
                        </div>
                         <div class="form-outline">
                             <input type="text" id="typeText" class="form-control" name="phone" />
                            <label class="form-label" for="typeText">Phone</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
                            Close
                        </button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
