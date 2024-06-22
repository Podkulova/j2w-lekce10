[#ftl]

[@c.page title="Rodic ${rodic.celeJmeno}"]
    <h1>Rodič: <strong>${rodic.celeJmeno}</strong></h1>
    <p><i class="bi bi-at"></i> <a href="mailto:${rodic.email}">${rodic.email}</a></p>
    <p><i class="bi bi-phone"></i> <a href="tel:${rodic.telefon}">${rodic.telefon}</a></p>

    <h2>Děti</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Jméno</th>
            <th scope="col">Příjmení</th>
            <th scope="col">Třída</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list rodic.deti as dite]
            <tr>
                <td>${dite.prijmeni}</td>
                <td>${dite.jmeno}</td>
                <td><a href="/tridy/${dite.trida.id}">${dite.trida.nazev}</a></td>
                <td><a href="/studenti/${dite.id}"><i class="bi bi-arrow-right-square-fill"></i></a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]