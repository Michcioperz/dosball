
Unit dosballu;

Interface

Var 
  ballsila: integer;
  ballcel, ballunlock: integer;
  ballile: longint;
  ballgol: boolean;
  ballmenui: integer;
Procedure ballilosc;
Procedure ballgool;
Procedure ballkarne;
Procedure ballmenu;

Implementation
Procedure ballilosc;
Begin
  writeln('===== Komunikat =====');
  writeln('= Trafionych goli:',ballile,' =');
  writeln('=====================');
End;
Procedure ballgool;
Begin
  writeln('======== Komunikat ========');
  writeln('= GOOOOOOOOOOOOOOOOOOOOL! =');
  writeln('===========================');
  ballile := ballile+1;
End;
Procedure ballkarne;
Begin
  writeln('======= Strzaly =======');
  writeln('=     /---------\     =  \');
  writeln('=     | 1  2  3 |     =   \');
  writeln('=     |         |     =    >  <= to jest bramka');
  writeln('=     | 4  5  6 |     =   /');
  writeln('=     \---------/     =  /');
  writeln('=                     =');
  writeln('=                     =');
  writeln('=                     =');
  writeln('=          o          =       <= tu jest pilka');
  writeln('=          A          =       <= to jestes TY');
  writeln('=======================');
  write('= Kierunek (1-6):');
  readln(ballcel);
  write('= Sila (1-10):');
  readln(ballsila);
  writeln('=======================');
  If ballsila = 5 Then
    randomize;
    ballunlock := trunc(random(6)+1);
    If (ballcel = ballunlock) Or (ballcel = 55)
      Then ballgool
  Else
    Begin
      writeln('====== Komunikat ======');
      writeln('= Pudlo! Niestety...  =');
      writeln('=======================');
    End;
  ballilosc;
End;
Procedure ballmenu;
Begin
  writeln('========== DOSball ==========');
  writeln('= Rozpocznij gre............1');
  writeln('= Wyjdz z gry...............0');
  writeln('=============================');
  readln(ballmenui);
  Case ballmenui Of 
    1: ballkarne;
    0:;
    Else writeln('Bledny wybor!');
  End;
End;
End.
