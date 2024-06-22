[#ftl]

[@c.page title="Student ${student.celeJmeno}"]
    <h1>Student: <strong>${student.celeJmeno}</strong></h1>
    <p>Třída: <a href="/tridy/${student.trida.id}">${student.trida.nazev}</a></p>

    <h2>Rodiče</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Příjmení</th>
            <th scope="col">Jméno</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list student.rodice as rodic]
            <tr>
                <td>${rodic.prijmeni}</td>
                <td>${rodic.jmeno}</td>
                <td><a href="/rodice/${rodic.id}"><i class="bi bi-arrow-right-square-fill"></i></a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]