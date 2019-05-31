Class Projekt.Bank Extends (%Persistent, %Populate)
{

Property Nazwa As %String;

Relationship Konta As Projekt.Konto [ Cardinality = children, Inverse = Bank ];

Storage Default
{
<Data name="BankDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nazwa</Value>
</Value>
</Data>
<DataLocation>^Projekt.BankD</DataLocation>
<DefaultData>BankDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^Projekt.BankD</IdLocation>
<IndexLocation>^Projekt.BankI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1.1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Nazwa">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Projekt.BankS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
