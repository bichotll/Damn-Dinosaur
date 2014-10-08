#link
https://cat.piratenpad.de/pirata-log

---

#Pirata.log

Pirata.log pretèn ser un primer pas per assolir un doble objectiu: transparència i comunicació. És una eina exclusivament per a registrar i centralitzar esdeveniments dins d'una liqorg.

Un esdeveniment pot ser qualsevol acció digna de ser registrada. Des de l'entrada d'un nou membre a una decisió presa en un grup, passant per la creació de nous pads, inici i final de votacions, etc.

Un esdeveniment també pot ser un estat diferent d'una mateixa acció. Així, les accions poden tenir estats.

Les accions són les que tenen la informació, tal com un títol, etiquetes, relacions amb altres accions, etc.

Una manera genèrica de descriure l'eina és un Twitter intern, però en comptes de missatges de 140 caràcters amb la possibilitat de publicar missatges amb una estructura determinada per l'acció que registren.

Les etiquetes serien lliures, amb possibilitat de ser administrades col·laborativament per a garantir que es manté un criteri comú. Funcionarien com filtre, amb possibilitat d'esdevenir tambe un sistema primigeni de grups.

Els esdeveniments també tenen un nivell de privacitat (propi o heretat de l'acció). Amb això es facilita l'accés a la informació segons el que cregui l'assemblea, des del simpatitzant o curiós de la xarxa fins al membre registrat.

L'eina ha de permetre també l'edició col·laborativa (no en temps real) de tota la informació, mantenint un registre històric per tal d'evitar que es perdi informació accidentalment.

A més, l'eina ha de permetre que l'usuari es configuri si vol rebre o no notificacions, emprant les etiquetes com filtres, si es vol rebre resums d'algunes etiquetes o de tot, etc.

Hi haurà una API per tal de facilitat l'adquisició (push) d'esdeveniments provinents d'eines de tercers.

Tinguen en compte l'API es te que tenir dos apartats, un per mostrar la informació de forma resumida i l'altra per configurar els clients els quals volen escriure al servei/fer log.

Així doncs, siguent l'aplicació modular, tindrien que haber dos tipus de clients, a més a més del back-end per configurar i incloure'n aquests. 
Un de lectura dels logs i altre d'escriptura.
L'admin ha de permetre incloure'n aquests.



##Proposta

 - API: Symfony (crear bundle api) / SailsJS
     - Bundle API
     - Bundle Usuaris
     - Connexió OAuth2
 - Front-end lectura principal: Symfony
    - (no Ajax - necesitem SEO) + Backbone per crear objectes js dels logs
 - Admin clients
    - Simplement un altre client de tipus "únic" per incloure els nous clients.


###Concepte Client

Tenim que fer un middleware base per llegir els objectius que ens interesa i pasar els nuclis d'informació en JSON, enviantlos cap a la API.

####Exemple:
Si volem agregar un blog com a registre, el client llegir[a cada X temps el RSS i parsejant-lo a JSON, enviant aquest informació llegible per la API i registrant els nous posts.
Aquest exemple pot ser aplicable per Wikis, Pads...etc


###TODO:
    - API
        - model base de dades
        - decidir com construirla
        - decidir quines trucades realitzar
    - Admin
        - Simple plantilla per administrar clients lectura/escriptura...permisos
    - Client lectura
        - Simple client per mostrar tota la informació i poder filtrar
        - Login per privacitat dades
    - Middleware escriptura
        - Crear base per poder ser extés
        
    - Test
    
    - Prepació i test per a la nostre plataforma
        
    - Posta en marxa 

Proposta versions:
v0.0.0. sense privacitat en lectura Client lectura
v0.1.0 privacitat lectura
v0.2.0 posibilitat email per notificacions X?

#
