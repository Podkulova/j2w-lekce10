[#ftl]

[@c.page title="Seznam učitelů"]
    <h1>Seznam učitelů</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Příjmení</th>
            <th scope="col">Jméno</th>
            <th scope="col">Třídní</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list ucitele as ucitel]
            <tr>
                <td>${ucitel.prijmeni}</td>
                <td>${ucitel.jmeno}</td>
                <td>[#if ucitel.trida??]<a href="/tridy/${ucitel.trida.id}">${ucitel.trida.nazev}</a>[/#if]</td>
                <td><a href="/ucitele/${ucitel.id}"><i class="bi bi-arrow-right-square-fill"></i></a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]