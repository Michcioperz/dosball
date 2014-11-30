
Unit dosballu;

Interface

Var
  ballsila: integer;
  ballcel, ballunlock: integer;
  ballile: longint;
  ballgol: boolean;
  ballmenui: integer;
  killswitch: boolean;
Procedure ballilosc;
Procedure ballgool;
Procedure ballkarne;
Procedure ballmenu;

Implementation
Procedure ballilosc;
Begin
  writeln('==== Information ====');
  writeln('= Goals scored:  ',ballile,'  =');
  writeln('=====================');
End;
Procedure ballgool;
Begin
  writeln('======= Information =======');
  writeln('= GOOOOOOOOOOOOOAAAAAAAL! =');
  writeln('===========================');
  ballile := ballile+1;
End;
Procedure ballkarne;
Begin
  writeln('======= TheGame =======');
  writeln('=     /---------\     =  \');
  writeln('=     | 1  2  3 |     =   \');
  writeln('=     |         |     =    >  <= this is the goal');
  writeln('=     | 4  5  6 |     =   /');
  writeln('=     \---------/     =  /');
  writeln('=                     =');
  writeln('=                     =');
  writeln('=                     =');
  writeln('=          o          =       <= this is the ball');
  writeln('=          A          =       <= this is YOU');
  writeln('=======================');
  write('= Target (1-6):');
  readln(ballcel);
  write('= Power (1-10):');
  readln(ballsila);
  writeln('=======================');
  If ballsila = 5 Then
    randomize;
    ballunlock := trunc(random(6)+1);
    If (ballcel = ballunlock) Or (ballcel = 55)
      Then ballgool
  Else
    Begin
      writeln('===== Information =====');
      writeln('= Missed, no goal...  =');
      writeln('=======================');
    End;
  ballilosc;
End;
Procedure ballmenu;
Begin
  writeln('========== DOSball ==========');
  writeln('= Play......................1');
  writeln('= Exit......................0');
  writeln('=============================');
  readln(ballmenui);
  Case ballmenui Of
    1: ballkarne;
    0: killswitch := true;
    Else writeln('Incorrect choice!');
  End;
End;
End.
