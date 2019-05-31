Class Projekt.StalyProcent Extends (Projekt.Lokata, %SerialObject, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Property oprocentowanie As %Float;

Method Zysk() As %Float
{
	set x = ..okres
	set y = ..oprocentowanie
	set z = (..wklad*x*30*y/365)
	return z
}

}
