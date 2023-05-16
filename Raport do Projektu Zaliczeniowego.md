<a name="br1"></a>**Raport projektu zaliczeniowego**

Autor: Adrian Żerebiec

Data wykonania: 24.01.2023

**Wybrałem dwa algorytmy spośród zaproponowanych:**

\- Poszukiwanie przypadkowe (Pure Random Search)

\- Wielokrotny start (Multi-start)

**Oraz dwie funkcje z pakietu Smoof:**

\- Funkcję Rosenbrocka

Krótki opis:

Funkcja Rosenbrocka funkcja niewypukła używana w optymalizacji jako test dla algorytmówoptymalizacji. Zwana jest też ze względu na swój kształt „doliną Rosenbrocka” lub „funkcjąbananową Rosenbrocka”.Funkcja ta jest popularnie używana do przedstawiania zachowańalgorytmów optymalizacji. Minimum globalne funkcji znajduje się wewnątrz długiego,parabolicznego wgłębienia funkcji.

1




<a name="br2"></a>**Funkcję Ackleya**

Krótki opis:

W optymalizacji matematycznej funkcja Ackleya jest funkcją niewypukłą używaną jakoproblem testu wydajności dla algorytmów optymalizacji. Został on zaproponowany przezDavida Ackleya w jego rozprawie doktorskiej z 1987 roku.

2




<a name="br3"></a>**Poszukiwanie przypadkowe:**

Pure Random Search zdefiniowałem następująco:

Funkcja ta służy do znajdowania minimum funkcji w danym zbiorze wymiarów. Generuje ona macierzpunktów wybranych losowo w zadanym zbiorze wymiarów i następnie oblicza wartość funkcji dlakażdego z punktów. Znajduje ona minimum funkcji i zwraca jego wartość.

**Wielokrotny start:**

Multi-start został zdefiniowany następująco:

Funkcja ta również służy do znajdowania minimum funkcji w danym zbiorze wymiarów. Generuje onalosowe punkty w danym zbiorze wymiarów i wykorzystuje algorytm Neldera-Meada do znalezieniapunktu minimum. Następnie zwraca wartość funkcji w tym punkcie.

3




<a name="br4"></a>**Funkcja określająca wymiary:**

Funkcja ta jest używana do pobierania wymiarów funkcji celu. Funkcja ta przyjmuje funkcję celu iliczbę wymiarów jako argumenty. Następnie pobiera górne i dolne granice funkcji celu ze zestawuparametrów funkcji celu. Na końcu zwraca tablicę dwuwymiarową składającą się z górnych i dolnychgranic dla każdego wymiaru.

**Funkcje obliczające: średnie, odchylenie standardowe oraz przedziały ufności**

Co więcej mamy także funkcję definiującą budżet dla PRS oraz liczbę wykonań tego algorytmu.

4




<a name="br5"></a>**Główna funkcja**

Funkcja ta jest używana do wygenerowania wyników pomiarowych ze wspomnianych wyżejalgorytmów optymalizacji. Funkcja ta przyjmuje liczbę przebiegów, liczbę punktów, liczbę wymiarów,funkcję celu i nazwę funkcji jako argumenty. Następnie tworzy funkcję z licznikiem, aby zliczyć liczbęwywołań funkcji celu. Następnie generuje wyniki przebiegu algorytmów. Funkcja oblicza średnie,odchylenie standardowe i przedział ufności dla wyników Monte Carlo i algorytmu przeszukiwaniapołożenia, a także budżet wywołań funkcji celu. Na końcu funkcja zwraca listę zawierającą średnie,odchylenie standardowe i przedział ufności dla obu algorytmów.

5



<a name="br6"></a>**Podstawowy plik z wywołaniem**

**Wyniki działania programu:**

Funkcje Ackleya oraz Rosenbrocka został uruchomione dla wymiarów 2, 10 i 20 oraz dla 100 punktówi 50 uruchomień. Podczas nich zbierałem dane dotyczące średnich, odchyleń, ufności oraz różnicęzdefiniowaną przeze mnie jako wartość absolutna różnic średnich MS oraz PRS. Co więcej tworzyłemw tym samym czasie wykresy oraz histogramy. Dane były zbierane do plików, gdzie możemy zobaczyćjaka np. była średnia dla Ackleya 2D dla PRS. Dodatkowo wykresy oraz histogramy zostały zapisanedo katalogów w postaci plików PNG.

6




<a name="br7"></a>**Porównanie dla Ackleya 2D**

7




<a name="br8"></a>**Porównanie dla Ackleya 10D**

8



<a name="br9"></a>**Porównanie dla Ackleya 20D**

9




<a name="br10"></a>**Porównanie dla Rosenbrocka 2D**

10




<a name="br11"></a>**Porównanie dla Rosenbrocka 10D:**

11




<a name="br12"></a>**Porównanie dla Rosenbrocka 20D**

12




<a name="br13"></a>**Analiza statystyczna**

Używamy funkcji t.test i konstruujemy 95-procentowe przedziały ufności dla różnic średnich. Dlatestów statystycznych za hipotezę zerową przyjmujemy stwierdzenie, że średnie z obu algorytmów sąrówne. Hipoteza alternatywna to oczywiście stwierdzenie, że są one różne.

**Wartości uzyskane dzięki wykorzytsaniu funkcji t.test**

||<p>**Wartość Rosenbrock**</p><p>**2D**</p>||<p>**Rosenbrock**</p><p>` `**10D**</p>||<p>**Rosenbrock**</p><p>` `**20D**</p>||<p>**Ackley**</p><p>` `**2D**</p>||<p>**Ackley**</p><p>` `**10D**</p>||<p>**Ackley**</p><p>` `**20D**</p>|
| :- | :- | :- | :- | :- | :- | :- | :- | :- | :- | :- | :- |
**Mean of** 9.339409e+00 8.449998e+04 5.490841e+05 8.574625 19.45217 20.32772

**PRS**

**Mean of** 7.237551e-10 2.920326e-08 1.612208e-08 0.923986 17.92257 18.65230

**MS**

` `**P Value** <2.2e-16 <2.2e-16 <2.2e-16 <2.2e-16 < 2.2e-16 < 2.2e-16**Confidence** 9.127747 - 84219.54 - 548291.3 - 6.93696 - 1.511886 1.523916- 9.551071 84780.42 549876.8 8.016245 -1.87166 1.641636

W powyższej tabelce widać, że p-wartości są znacznie mniejsze od przyjętego poziomu istotności(0.05). Zatem każdą z postawionych hipotez zerowych (mówiących o równości średnich) musimyodrzucić.

**Podsumowanie**

Powyższe analizy pozwalają nam stwierdzić iż mimo teoretycznych podobieństw PRS jak i MS sąkompletnie od siebie różne. Należy zatem dobierać je zależnie od sytuacji, badanej funkcji jak i celówjakie przyświecają nam podczas tworzenia analizy. Dla lepsze analizy moglibyśmy wziąć także innefunkcje do zbadania jak algorytmy sobie z nimi poradzą, gdyż ze sporą pewnością możemy stwierdzićże zależnie od charakterystyki funkcji powinniśmy dobierać algorytm.

13
