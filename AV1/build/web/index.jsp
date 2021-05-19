<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Google-Noto-Emoji-Travel-Places-42496-school.ico" type="image/x-icon" />
        <title>Colégio P. dos Laranjais.</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body {
            background-color:  	#FFA500;
        }
        #Notas {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: #4F4F4F;
            width: 100%;
        }
        #Notas td, #customizar th {
            border: 1px solid #ffffff;
            padding: 8px;
        }
        #Notas tr:nth-child(odd){background-color: #12bf02;}
        #Notas tr:nth-child(even){background-color: #12bf02;}
        #Notas tr:hover {background-color: #ffffff;}
        #Notas th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #F0FFFF;
            color: blueviolet;
        }
    </style>
    <body>
        <h1 style="color: white; background-color: red;">Colégio P. dos Laranjais</h1>
        <h2 style="color:black; text-align: center; ">Notas dos alunos do primeiro ano do ensino medio</h2>
        <h3 style="color:black;">Sala: 1° Ano do Ensino Médio </h3>

        <%
            List<Alunos> alunos = new ArrayList<Alunos>();
            alunos.add(new Alunos("Davi Casimiro", 111111111, 5.0, 7.0, 6.0, 7.0));
            alunos.add(new Alunos("Gustavo Barros", 222222222, 4.0, 5.0, 8.0, 7.0));
            alunos.add(new Alunos("Gabriel Henrique", 333333333, 9.0, 8.0, 9.0, 10.0));
            alunos.add(new Alunos("Eduardo Monteiro", 444444444, 7.0, 7.0, 7.0, 7.0));
            alunos.add(new Alunos("Lívia da Silva", 555555555, 2.0, 9.0, 8.0, 7.0));
            alunos.add(new Alunos("Pedro Pessoa", 66666666, 8.0, 7.0, 1.0, 9.0));
            out.println("<table id='Notas'>");
            out.println("<tr>"
                    + "<th>Nome do Aluno</th>"
                    + "<th>RA</th>"
                    + "<th>Nota 1</th>"
                    + "<th>Nota 2</th>"
                    + "<th>Nota 3</th>"
                    + "<th>Nota 4</th>"
                    + "<th>Média</th>"
                    + "</tr>");
            for (Alunos aluno : alunos) {
                aluno.setMedia(aluno.getNota1(), aluno.getNota2(), aluno.getNota3(), aluno.getNota4());
                out.println("<tr>"
                        + "<td>" + aluno.getNome() + "</td>"
                        + "<td>" + aluno.getRA() + "</td>"
                        + "<td>" + aluno.getNota1() + "</td>"
                        + "<td>" + aluno.getNota2() + "</td>"
                        + "<td>" + aluno.getNota3() + "</td>"
                        + "<td>" + aluno.getNota4() + "</td>"
                        + "<td>" + aluno.getMedia() + "</td"
                        + "</tr>");
            }
            out.println("</table>");
        %>
        <a style="text-align: center; " href="page2.jsp" target="_self" rel="external">2º Ano do Ensino Médio</a>
       
    </body>
</html>