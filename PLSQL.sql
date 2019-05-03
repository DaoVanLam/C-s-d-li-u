--set serveroutput on;

--declare
--hoten varchar(15);
--begin
--hoten := 'Hacker';
--dbms_output.put_line(hoten);
--end;

--declare ncount number;
--begin
--ncount:=&Nhapso;
--if ncount<100 then
--DBMS_OUTPUT.PUT_LINE('Nho hon 100');
--end if;
--end;

declare ncount number;
begin
ncount:=&Nhapso;
if ncount mod 2=0 then
DBMS_OUTPUT.PUT_LINE('So chan');
else
DBMS_OUTPUT.PUT_LINE('So le');
end if;
end;