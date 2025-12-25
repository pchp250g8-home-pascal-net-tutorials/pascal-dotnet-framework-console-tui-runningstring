uses
  System,
  System.Threading;
begin
  Console.Clear();
	Console.CursorVisible := False;
	var strSpaces := new String(#32, 80);
	var strLine := 'Hello World!!! Running String!!! Press Any Key To Exit!!!';
	strLine := strSpaces + strLine + strSpaces;
	var nCounter := 0;
	var nStrLen := strLine.Length - 80;
	repeat
		strSpaces := strLine.Substring(nCounter, 80);
		Console.SetCursorPosition(10, 10);
		Console.Write(strSpaces);
		Thread.Sleep(140);
		inc(nCounter, 1);
		If nCounter >= nStrLen then nCounter := 0;
	until Console.KeyAvailable;
end.