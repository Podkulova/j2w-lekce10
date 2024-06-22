[#ftl]

[@c.page title="Učitel ${ucitel.celeJmeno}"]
    <h1>Učitel: <strong>${ucitel.celeJmeno}</strong></h1>
    [#if ucitel.trida??]<p>Třídní učitel: <a href="/tridy/${ucitel.trida.id}">${ucitel.trida.nazev}</a></p>[/#if]
[/@c.page]