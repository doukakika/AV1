<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Google-Noto-Emoji-Travel-Places-42496-school.ico" type="image/x-icon" />
        <title>Colégio P. dos Laranjais</title>
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
        #Notas tr:nth-child(odd){background-color: #ff0000;}
        #Notas tr:nth-child(even){background-color: #ff0000;}
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
        <h2 style="color:black; text-align: left; ">Notas dos alunos do terceiro ano do ensino medio</h2>
        <h4 style="color:black; text-align: left; ">3° Ano do Ensino Médio </h4>
        
        <a href="index.jsp" target="_self" rel="external">1º Ano do Ensino Médio</a>
        <%
            List<Alunos> alunos = new ArrayList<Alunos>();
            alunos.add(new Alunos("Adilson Pereira", 123123123, 1.0, 2.0, 3.0, 4.0));
            alunos.add(new Alunos("João Pedro", 321321123, 3.0, 3.0, 4.0, 4.0));
            alunos.add(new Alunos("Larissa Ferreira", 987789456, 9.0, 2.0, 2.0, 4.0));
            alunos.add(new Alunos("Isabela Barros", 999777888, 9.0, 7.0, 2.0, 5.0));
            alunos.add(new Alunos("Júlia lins", 777666777, 2.0, 2.0, 5.0, 4.0));
            alunos.add(new Alunos("Caio Romano", 888999888, 5.0, 5.0, 4.5, 4.5));
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
        <a href="page2.jsp" target="_self" rel="external">2º Ano do Ensino Médio</a>
    </body>
</html>