# Házi feladat 3
* Kurzus: Programozás I. (SST111)
* Félév: 2016/17 II.
* Határidő: 2017-03-26

---

## I. feladat (1 pont)
1. Ha Coospace-re szeretnéd feltölteni a házit, töltsd le onnan és csomagold ki a ```homework-03.zip```-et! Mikor végeztél, tömörítsd vissza és úgy add be! Ha GitHub-on szeretnéd, akkor kövesd a VI. feladat pontjait!
2. Most nincs R projekt fájl a mappában, ezért indíts egy új projektet! 
3. Nyiss egy R szkriptet ```homework-03.R``` néven egy ```src``` nevű mappában! Ebbe írd a II. feladat megoldásait. Nyiss egy R szkriptet ```homework-03.functions.R``` néven az ```src``` mappában! Ide kerüljön, ha írsz egy függvényt.
4. A ```homework-03.R``` fájlt kikommentelt fejléccel kezdd! A fejlécben a következőket add meg: 
    - fájl címe (*Házi feladat 3*)
    - kurzus neve (*Programozás I.*)
    - félév (*2016/17. II. félév*)
    - neved
    - dátum
5. Kommenteld folyamatosan, amit csinálsz és figyelj, hogy minél jobban betartsd az R kódírási stílusára vonatkozó irányelveket!

---

## II. feladat (2 pont)

1. Készíts egy listát, ami 5 vektort tartalmaz. Mindegyik vektor hossza legyen egy véletlenszerű 10 és 20 közötti szám. A vektorok (1,2) intervallumon egyenletes eloszlásból származzanak.
2. Nézd meg for ciklussal, hogy az előbb létrehozott listának milyen hosszúak az elemei! A végeredmény legyen egy vektor.
3. Nézd meg az ```apply``` függvénycsalád egy tagjával, hogy a listának milyen hosszúak az elemei! A végeredmény legyen egy lista.
4. Nézd meg az ```apply``` függvénycsalád egy tagjával, hogy a listának milyen hosszúak az elemei! A végeredmény legyen egy vektor.

## III. feladat (1.5 pont)
1. Hívd be a ```chickwts``` datasetet, amit az R alapból tartalmaz.
2. Nézd meg, mennyi az átlagsúlya a különbözőképp táplált csirkéknek! Használd az ```aggregate``` függvényt!
3. Az előbb kapott aggregált data frame-et rendezd az átlagsúly szerint csökkenő sorrendbe!

## IV. feladat (2.5 pont)
1. Hozz létre egy 50 soros, 10 oszlopos mátrixot, aminek az értékei normális eloszlásból származnak. Minden sor szórása legyen egyenlő a sor számával.
2. Számold ki for ciklussal minden sor szórását! A végeredmény legyen egy vektor.
3. Számold ki az ```apply``` függvénycsalád egy tagjával minden sor szórását! A végeredmény legyen egy vektor.
4. Normalizáld a mátrix értékeit -1-től 1-ig tartó intervallumra és nézd meg a sorok átlagát!

## V. feladat (3 pont)
1. Hívd be a előző házikban is használt ```fivethirtyeight``` package-et és olvasd be a ```comic_characters``` datasetet!
2. Alakítsd át a ```name``` nevű oszlopot úgy, hogy minden karakternek csak az elsődleges neve maradjon ott mindenféle zárójeles rész nélkül. Például "Spider-Man (Peter Parker)" helyett "Spider-Man", "Benjamin Grimm (Earth-616)" helyett "Benjamin Grimm" maradjon. Használhatod a feladathoz pl. az ```strsplit``` függvényt és az ```apply``` függvénycsalád egy tagját, de használj nyugodtan mást is, csak arra figyelj, hogy a megoldásodban ne legyen for ciklus!
3. Írj egy függvény ```get_gender``` néven, aminek az a célja, hogy egy karakter nevének megadásakor visszaadja a karakter genderét. A karakter genderét úgy add vissza, hogy ha a ```gsm``` oszlopban ```NA``` érték van, akkor a ```sex``` oszlop tartalmát írja ki a függvény, viszont ha a ```gsm``` oszlop értéke nem ```NA```, akkor a ```gsm``` oszlop tartalmát írja ki. A gender kiírásakor vágd le a " Characters" részt, tehát pl. "Male Characters" helyett "Male"-t, "Female Characters" helyett "Female"-t írjon ki a függvény. A függvényben ne legyen for ciklus! Figyelj arra is, hogy a 2. feladatban végrehajtott átalakítás miatt egy név többször is szerepelhet a ```name``` oszlopban. Ilyen esetekben minden egyező név esetén nézze meg a gendert és vektorként térjen vissza az értékeikkel.
4. Nézd meg az előzőleg írt ```get_gender``` függvénnyel, hogy milyen genderű Thor, Katherine Pryde és Loki Laufeyson! Thornál és Lokinál egy vektort kell kapnod.

---

## VI. feladat (+2 pont)
A feladat megoldásához segítségedül lehet [ez a leírás](https://gist.github.com/Chaser324/ce0505fbed06b947d962) a Submitting a Pull Request részig.

1. Forkold le a házi feladat repóját! Ezt GitHub-on a Fork gombbal tudod megtenni. Ezután klónozd le a forkodból a repót!
2. Hozz létre egy új branchet ```my-solutions-githubazonosito``` néven.
3. A ```homework-03.R``` fájl írása közben ne felejts el commitokat írni, mikor úgy gondolod, hogy egy értelmes egység végéhez értél vagy megszakítod a munkádat.
4. Készíts egy [.gitignore](https://github.com/github/gitignore/blob/master/R.gitignore) fájlt, hogy ne pushold pl. az RHistory fájlodat. Ezt se felejtsd el commitolni.
5. Ha végeztél, mindent commitoltál, pusholtad a változásokat GitHubra, küldj egy pull requestet!

---
 
