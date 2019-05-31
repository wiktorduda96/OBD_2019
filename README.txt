Komendy do wpisania w terminalu

set k=##class(Projekt.Konto).%New()
set klient = ##class(Projekt.Klient).%New()
set klient.Imie = "Wiktor"
set klient.Nazwisko="Duda"
set bank = ##class(Projekt.Bank).%New()
set bank.Nazwa="BP"
set konto = ##class(Projekt.Konto).%New()
set konto.Bank=bank
set konto.WlascicielKonta=klient
set lokata1=##class(Projekt.StalyProcent).%New()
set lokata1.okres=24
set lokata1.wklad=1850
set lokata1.oprocentowanie=0.08
do konto.DodajLokate(lokata1)
zwrite lokata1.Zysk()
set lokata2=##class(Projekt.ZmiennyProcent).%New()
set lokata2.wklad=1850
do konto.DodajLokate(lokata2)
set proc1=##class(Projekt.SkladowaProcentowa).%New()
set proc1.miesiac=1
set proc1.stopa=0.20
set proc2=##class(Projekt.SkladowaProcentowa).%New()
set proc2.miesiac=1
set proc2.stopa=0.40
set proc3=##class(Projekt.SkladowaProcentowa).%New()
set proc3.miesiac=1
set proc3.stopa=0.60
set proc4=##class(Projekt.SkladowaProcentowa).%New()
set proc4.miesiac=1
set proc4.stopa=0.80
do lokata2.Dodaj(proc1)
do lokata2.Dodaj(proc2)
do lokata2.Dodaj(proc3)
do lokata2.Dodaj(proc4)
zwrite lokata2.Zysk()
zwrite konto.CalkowityZysk()
