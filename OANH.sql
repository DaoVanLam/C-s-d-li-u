set serveroutput on;
Declare
hoten varchar(15):='Oanh';
begin
dbms_output.put_line(hoten); // Lenh in ra thay the cho print
end;
//cach 2
Declare
hoten varchar(15);
begin
hoten:='Oanh';
dbms_output.put_line(hoten);
end;
// Nhap so lap tu ban phim<100
Declare
ncount number;
begin
ncount:=&Nhapso;
if ncount<100 then dbms_output.put_line('Nho hon 100.Inside');
end if;
dbms_output.put_line('ouside');
end;

//nhap 1 so tu ban phim kiem tra xem so chan hay so le
Declare
ncount number;
begin
ncount:=&Nhapso;
if ncount mod 2 =1 then dbms_output.put_line('So le');
else
dbms_output.put_line('so chan');
end if;
dbms_output.put_line('ouside');
end;
// Nhap 1 so tu ban phim, in ra bang cuu chuong
Declare
dem integer :=0;
ketqua number;
ncount number:=&nhapso;
begin
loop 
dem:= dem +1;
ketqua:=ncount*dem;
dbms_output.put_line(ncount||'x'||dem||'='||ketqua);
exit when dem>=10;
end loop;
end;
//Cach 2 dung for
Declare
dem integer :=0;
ketqua number;
ncount number:=&nhapso;
begin
for dem IN reverse
1..10 LOOP
ketqua:=ncount*dem;
dbms_output.put_line(ncount||'x'||dem||'='||ketqua);
end loop;
end;

BTVN//Tinh tong S=1+2+...n n nhap tu ban phim , kq in ra man hinh
Declare
dem integer :=0;
S number;
ncount number:=&nhapso;
begin
loop 
dem:= dem +1;
S:=ncount+ dem;
dbms_output.put_line(ncount||'+'||dem||'='||S);
exit when dem=n;
end loop;
end;

Declare
dem integer :=1;
ketqua number:=0;
n number:=&nhapso;
begin
for dem IN reverse
1..n+1 LOOP
ketqua:=ketqua+dem;

end loop;
dbms_output.put_line(ketqua);
end;