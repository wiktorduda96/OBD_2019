Class Projekt.Konto Extends (%Persistent, %Populate)
{

Property Lokaty As list Of Projekt.Lokata [ Required ];

Relationship WlascicielKonta As Projekt.Klient [ Cardinality = one, Inverse = Konto ];

Relationship Bank As Projekt.Bank [ Cardinality = parent, Inverse = Konta ];

Method DodajLokate(input As Projekt.Lokata)
{
    Do ..Lokaty.Insert(input)
}

Method CalkowityZysk() As %Float [ Final ]
{
	set suma=0
 	for i=1:1:..Lokaty.Count(){
	 set suma = suma + ..Lokaty.GetAt(i).Zysk()
 }
 return suma
}

Storage Default
{
<Data name="KontoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Lokaty</Value>
</Value>
<Value name="3">
<Value>WlascicielKonta</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("Konta")</DataLocation>
<DefaultData>KontoDefaultData</DefaultData>
<IdLocation>^Projekt.BankC("Konta")</IdLocation>
<IndexLocation>^Projekt.KontoI</IndexLocation>
<StreamLocation>^Projekt.KontoS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
