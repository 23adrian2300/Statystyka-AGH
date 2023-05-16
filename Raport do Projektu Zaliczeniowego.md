﻿<a name="br1"></a>**Raport projektu zaliczeniowego**

Autor: Adrian Żerebiec

Data wykonania: 24.01.2023

**Wybrałem dwa algorytmy spośród zaproponowanych:**

\- Poszukiwanie przypadkowe (Pure Random Search)

\- Wielokrotny start (Multi-start)

**Oraz dwie funkcje z pakietu Smoof:**

\- Funkcję Rosenbrocka

Krótki opis:

Funkcja Rosenbrocka funkcja niewypukła używana w optymalizacji jako test dla algorytmów

1




<a name="br2"></a>**Funkcję Ackleya**

Krótki opis:

W optymalizacji matematycznej funkcja Ackleya jest funkcją niewypukłą używaną jako

2




<a name="br3"></a>**Poszukiwanie przypadkowe:**

Pure Random Search zdefiniowałem następująco:

Funkcja ta służy do znajdowania minimum funkcji w danym zbiorze wymiarów. Generuje ona macierz

**Wielokrotny start:**

Multi-start został zdefiniowany następująco:

Funkcja ta również służy do znajdowania minimum funkcji w danym zbiorze wymiarów. Generuje ona

3




<a name="br4"></a>**Funkcja określająca wymiary:**

Funkcja ta jest używana do pobierania wymiarów funkcji celu. Funkcja ta przyjmuje funkcję celu i

**Funkcje obliczające: średnie, odchylenie standardowe oraz przedziały ufności**

Co więcej mamy także funkcję definiującą budżet dla PRS oraz liczbę wykonań tego algorytmu.

4




<a name="br5"></a>**Główna funkcja**

Funkcja ta jest używana do wygenerowania wyników pomiarowych ze wspomnianych wyżej

5



<a name="br6"></a>**Podstawowy plik z wywołaniem**

**Wyniki działania programu:**

Funkcje Ackleya oraz Rosenbrocka został uruchomione dla wymiarów 2, 10 i 20 oraz dla 100 punktów

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

Używamy funkcji t.test i konstruujemy 95-procentowe przedziały ufności dla różnic średnich. Dla

**Wartości uzyskane dzięki wykorzytsaniu funkcji t.test**

||<p>**Wartość Rosenbrock**</p><p>**2D**</p>||<p>**Rosenbrock**</p><p>` `**10D**</p>||<p>**Rosenbrock**</p><p>` `**20D**</p>||<p>**Ackley**</p><p>` `**2D**</p>||<p>**Ackley**</p><p>` `**10D**</p>||<p>**Ackley**</p><p>` `**20D**</p>|
| :- | :- | :- | :- | :- | :- | :- | :- | :- | :- | :- | :- |
**Mean of** 9.339409e+00 8.449998e+04 5.490841e+05 8.574625 19.45217 20.32772

**PRS**

**Mean of** 7.237551e-10 2.920326e-08 1.612208e-08 0.923986 17.92257 18.65230

**MS**

` `**P Value** <2.2e-16 <2.2e-16 <2.2e-16 <2.2e-16 < 2.2e-16 < 2.2e-16

W powyższej tabelce widać, że p-wartości są znacznie mniejsze od przyjętego poziomu istotności

**Podsumowanie**

Powyższe analizy pozwalają nam stwierdzić iż mimo teoretycznych podobieństw PRS jak i MS są

13