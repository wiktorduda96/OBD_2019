Class Projekt.ZmiennyProcent Extends (Projekt.Lokata, %SerialObject, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Property oprocentowania As list Of SkladowaProcentowa;

Method Dodaj(input As Projekt.SkladowaProcentowa)
{
	
	Do ..oprocentowania.Insert(input)
}

Method Zysk() As %Float
{
	set k = ..wklad
	for i=1:1:..oprocentowania.Count(){
		
	set x = ..oprocentowania.GetAt(i).miesiac
	set y = ..oprocentowania.GetAt(i).stopa
	set k = k+(k*x*30*y/365)
	
	}
	
	return k-..wklad
}

}
