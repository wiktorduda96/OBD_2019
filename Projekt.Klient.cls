Class Projekt.Klient Extends (%Persistent, %Populate)
{

Property Imie As %String;

Property Nazwisko As %String;

Relationship Konto As Projekt.Konto [ Cardinality = many, Inverse = WlascicielKonta ];

Storage Default
{
<Data name="KlientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Imie</Value>
</Value>
<Value name="3">
<Value>Nazwisko</Value>
</Value>
</Data>
<DataLocation>^Projekt.KlientD</DataLocation>
<DefaultData>KlientDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^Projekt.KlientD</IdLocation>
<IndexLocation>^Projekt.KlientI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1.1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Imie">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Nazwisko">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Projekt.KlientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
