# XJV - Viewer for XJustiz
A small application that creates a browser based viewer for XJustiz XML Files

"[...]XJustiz ist ein zur Realisierung des elektronischen Rechtsverkehrs entwickelter Datensatz, der grundlegende Festlegungen für den Austausch strukturierter Daten zwischen den Prozessbeteiligten (Bürgern, Unternehmen, Rechtsanwälten, IHKs) und den Gerichten enthält.[...]"
Siehe https://xjustiz.justiz.de/

Dieser Datensatz wird bei der Kommunikation mittels EGVP, beA, eBO, beBPo, etc. eingesetzt. Besondere Relevanz hat in diesem Zusammenhang auch die Akteneinsicht, die von immer mehr Behörden in Form von PDF-Dateien und begleitendem XJustiz-Datensatz gewährt wird.   

Sofern kein Akteneinsichtsportal angebunden wird, ist zur Anzeige ein geeignetes Anzeigeprogramm / XJustiz-Viewer notwendig. Stand März/2021 ist mir kein kommerzielles Produkt bekannt, das den Standard in der geschilderten Form unterstützt. Eine bereits existierende Alternative stellt der XJustiz-Viewer von https://ervjustiz.de/ dar. Dieser ist jedoch nur auf Anfrage verfügbar und nicht quelloffen.

Das Ziel von XJV - Viewer for XJustiz ist die Bereitstellung einer einfachen Lösung, die den Zugriff auf die Metadaten der mit einer XJustiz-Datei übermittelten "Schriftgutobjekte" ermöglicht. 

Leider liegen mir aktuell nur Testdateien der Bundesagentur für Arbeit vor. Über die Bereitstellung ggf. anonymisierter XJustiz-Dateien zur weiteren Entwicklung würde ich mich sehr freuen. 

Da es sich um ein Freizeit-Projekt handelt, kann keine Gewähr für die korrekte Darstellung eingelesener Datensätze übernommen werden.  

Geplante Features nach Priorität:
- Anzeige von Nachrichten des Typs "nachricht.gds.uebermittlungSchriftgutobjekte.0005005"
- Unterstützung ab XJustiz 3.2.1 (gültig am 31.10.2021)
- Proof of Concept
  - "Flache" Anzeige einer in einem Verzeichnis abgespeicherten Akte
  - Auflösen aller enthaltenen Codes in Klartext


  
