Class Projekt.SkladowaProcentowa Extends %SerialObject
{

Property miesiac As %Float;

Property stopa As %Float;

Storage Default
{
<Data name="SkladowaProcentowaState">
<Value name="1">
<Value>miesiac</Value>
</Value>
<Value name="2">
<Value>stopa</Value>
</Value>
</Data>
<State>SkladowaProcentowaState</State>
<StreamLocation>^Projekt.SkladowaProcentowaS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
