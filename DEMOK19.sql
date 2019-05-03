/*-------------------------------------------------
Purpose   : For Oracle Demo
-------------------------------------------------*/
create table ChiNhanh(
  MaChiNhanh  char(10) primary key,
  TenChiNhanh nvarchar2(30)
);

create table KhachHang(
  SoCMT char(9) primary key,
  TenKhach  nvarchar2(50),
  SoDienThoai varchar2(15),
  DiaChi    nvarchar2(100),
  NgaySinh  date,
  GioiTinh  number(1,0),
  MaChiNhanh char(10),  
  foreign key(MaChiNhanh)  references ChiNhanh
);

create table TaiKhoan(
  MaTaiKhoan  char(13) primary key,
  NgayMoTK  date,
  NgayDongTK date,
  SoCMT char(9),
  foreign key (SoCMT) references KhachHang
);

alter table TaiKhoan add SoDu number(12,0);

create table ATM(
  MaATM char(10) primary key,
  TinhTrang char(1),
  DiaDiem nvarchar2(50),
  MaChiNhanh char(10),
  foreign key (MaChiNhanh) references ChiNhanh
);

create table TheATM(
  MaThe char(10) primary key,
  LoaiThe char(1),
  ThoiHan date,
  GiaoDichToiDa number(10,0),
  MaTaiKhoan char(13),
  foreign key (MaTaiKhoan) references TaiKhoan
);  

create table GiaoDich(
  MaGiaoDich char(10) primary key,
  MaThe char(10),
  MaATM char(10),
  NgayGiaoDich date,
  SoTien  number(10,0),
  foreign key (MaThe) references TheATM,
  foreign key (MaATM) references ATM
);

/*----------insert dump data---------------------*/
insert into ChiNhanh values('HN00000001', 'Cau Giay');
insert into ChiNhanh values('HN00000002', 'Thanh Xuan');
insert into ChiNhanh values('HN00000003', 'Dong Da');
insert into ChiNhanh values('HN00000004', 'Ba Dinh');
insert into ChiNhanh values('HN00000005', 'Long Bien');
insert into ChiNhanh values('HN00000006', 'Thanh Tri');
insert into ChiNhanh values('TB00000001', 'Tien Hai');
insert into ChiNhanh values('TB00000002', 'Vu Thu');
insert into ChiNhanh values('HT00000007', 'Duc Tho');

insert into KhachHang values('151413097', 'Ly Nhan Dao', '0988333666','Duc Tho - Ha Tinh',to_date('12/01/1978','DD/MM/YYYY'), 1, 'HN00000001');
insert into KhachHang values('151011097', 'Tran Duc Nghia', '0988333663','Ly Nhan - Ha Nam',to_date('17/05/1990','DD/MM/YYYY'), 1, 'HN00000001');
insert into KhachHang values('252433097', 'Nguyen Thi Hang', '0988333623','Giao Thuy - Nam Dinh',to_date('02/01/1976','DD/MM/YYYY'), 0, 'HN00000003');
insert into KhachHang values('353423196', 'Le Hong Nam', '0978453676','Tinh Gia - Thanh Hoa',to_date('08/09/1966','DD/MM/YYYY'), 0, 'HN00000003');
insert into KhachHang values('251718097', 'Dinh Hong Nam', '0912338766','Dong Da - Ha Noi',to_date('19/12/1960','DD/MM/YYYY'), 1, 'HN00000003');
insert into KhachHang values('971063137', 'Ho Viet Duan', '0932333098','Thanh Xuan - Ha Noi',to_date('30/12/1984','DD/MM/YYYY'), 1, 'HN00000001');
insert into KhachHang values('123456789', 'Dinh Chi Long', '0955356666','Vinh Yen - Vinh Phuc',to_date('01/01/1984','DD/MM/YYYY'), 1, 'HN00000001');
insert into KhachHang values('856382748', 'Tran Hong Nam', '0901098612','Quan 1 - HCM',to_date('12/08/1983','DD/MM/YYYY'), 1, 'HN00000001');
insert into KhachHang values('104875748', 'Nguyen Ba Dao', '0902334554','Luc Ngan - Bac Giang',to_date('29/04/1982','DD/MM/YYYY'), 1, 'HN00000004');
insert into KhachHang values('184656387', 'Ngo The Vinh', '0915123123','Luc Ngan - Bac Giang',to_date('05/06/1980','DD/MM/YYYY'), 1, 'HN00000002');
insert into KhachHang values('684764395', 'La Quang Vinh', '0987145321','Vu Thu - Thai Bình',to_date('12/01/1980','DD/MM/YYYY'), 1, 'HN00000003');
insert into KhachHang values('684756584', 'Hoang A Na', '0989098145','Can Loc - Ha Tinh',to_date('01/05/1971','DD/MM/YYYY'), 0, 'HN00000001');
insert into KhachHang values('067463836', 'Tran Thi Lan', '0999546243','Hai Hau - Nam Dinh',to_date('20/04/1977','DD/MM/YYYY'), 0, 'HN00000005');
insert into KhachHang values('604757464', 'Ma Van Kháng', '0998098176','Thuong Tin - Ha Noi',to_date('10/10/1978','DD/MM/YYYY'), 1, 'HN00000002');
insert into KhachHang values('583464563', 'Tong Van Tinh', '0981432789','Ba Vi - Ha Noi',to_date('09/12/1992','DD/MM/YYYY'), 1, 'HN00000004');
insert into KhachHang values('057463537', 'Hoang Gia Phu', '0988098765','thanh pho Thanh Hoa',to_date('25/11/1983','DD/MM/YYYY'), 1, 'HN00000004');
insert into KhachHang values('047563836', 'Bui An Duy', '091234567','Dac Nong - Dac Lac',to_date('15/10/1983','DD/MM/YYYY'), 0, 'HN00000005');
-------------------
insert into TaiKhoan values('151413097000',to_date('12/01/2012','DD/MM/YYYY'), null, '151413097', 12000000);
insert into TaiKhoan values('151011097210',to_date('03/12/2010','DD/MM/YYYY'), null, '151011097', 4450000);
insert into TaiKhoan values('252433097009',to_date('10/10/2009','DD/MM/YYYY'), to_date('10/10/2014','DD/MM/YYYY'), '252433097', 120000);
insert into TaiKhoan values('353423196011',to_date('23/08/2010','DD/MM/YYYY'), null, '353423196', 50000);
insert into TaiKhoan values('251718097123',to_date('07/09/2014','DD/MM/YYYY'), null, '251718097', 120000);
insert into TaiKhoan values('971063137987',to_date('16/02/2003','DD/MM/YYYY'), null, '971063137', 0);
insert into TaiKhoan values('123456789098',to_date('25/09/2014','DD/MM/YYYY'), null, '123456789', 400000);
insert into TaiKhoan values('856382748596',to_date('08/05/2001','DD/MM/YYYY'), null, '856382748', 50000);
insert into TaiKhoan values('104875748564',to_date('11/12/2012','DD/MM/YYYY'), to_date('08/08/2013','DD/MM/YYYY'), '104875748', 0);
insert into TaiKhoan values('184656387564',to_date('05/07/2010','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '184656387', 510000);
insert into TaiKhoan values('684764395757',to_date('02/01/2003','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '684764395', 120000);
insert into TaiKhoan values('684756584647',to_date('04/11/2012','DD/MM/YYYY'), to_date('03/03/2013','DD/MM/YYYY'), '684756584', 150000000);
insert into TaiKhoan values('067463836474',to_date('19/05/2013','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '067463836',1234000000);
insert into TaiKhoan values('604757464353',to_date('07/07/2014','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '604757464',0);
insert into TaiKhoan values('583464563839',to_date('26/09/2010','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '583464563',8087700);
insert into TaiKhoan values('057463537475',to_date('21/10/2003','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '057463537',456000);
insert into TaiKhoan values('047563836584',to_date('24/04/1999','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '047563836',790000);
insert into TaiKhoan values('317363036192',to_date('28/07/2001','DD/MM/YYYY'), to_date('03/04/2010','DD/MM/YYYY'), '047563836',5665500);
insert into TaiKhoan values('677563843554',to_date('09/03/2008','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '583464563',0);
insert into TaiKhoan values('947384374834',to_date('16/08/2006','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '684764395',0);
insert into TaiKhoan values('984985484848',to_date('12/12/2008','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '151413097',500000);
insert into TaiKhoan values('058573629586',to_date('08/08/2006','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '252433097',650000);
insert into TaiKhoan values('028475868574',to_date('14/01/2000','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '123456789',8700000);
insert into TaiKhoan values('576936985302',to_date('18/11/2006','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '856382748',1300000);
insert into TaiKhoan values('057463847585',to_date('28/05/2007','DD/MM/YYYY'), to_date('01/01/2012','DD/MM/YYYY'), '104875748',19077700);
insert into TaiKhoan values('057568675564',to_date('15/05/2005','DD/MM/YYYY'), to_date('','DD/MM/YYYY'), '104875748',0);
------------
insert into ATM values('ATM0000001','A','Cau Giay','HN00000001');
insert into ATM values('ATM0000002','A','Cau Giay','HN00000001');
insert into ATM values('ATM0000003','A','Cau Giay','HN00000001');
insert into ATM values('ATM0000004','A','Thanh Xuan','HN00000002');
insert into ATM values('ATM0000005','N','Thanh Xuan','HN00000002');
insert into ATM values('ATM0000006','A','Dong Da','HN00000003');
insert into ATM values('ATM0000007','A','Dong Da','HN00000003');
insert into ATM values('ATM0000008','A','Dong Da','HN00000003');
insert into ATM values('ATM0000009','A','Dong Da','HN00000003');
insert into ATM values('ATM0000010','A','Ba Dinh','HN00000004');
insert into ATM values('ATM0000011','A','Long Bien','HN00000005');
insert into ATM values('ATM0000012','A','Long Bien','HN00000005');
insert into ATM values('ATM0000013','A','Thanh Tri','HN00000006');
insert into ATM values('ATM0000014','A','Thanh Tri','HN00000006');
insert into ATM values('ATM0000015','N','Tien Hai','TB00000001');
insert into ATM values('ATM0000016','A','Tien Hai','TB00000001');
insert into ATM values('ATM0000017','N','Thanh Tri','HN00000006');
insert into ATM values('ATM0000018','A','Thanh Tri','HN00000006');
insert into ATM values('ATM0000019','A','Vu Thu','TB00000002');
insert into ATM values('ATM0000020','A','Thanh Tri','HN00000006');
insert into ATM values('ATM0000021','A','Thanh Tri','HN00000006');
insert into ATM values('ATM0000022','A','Duc Tho','HT00000007');
insert into ATM values('ATM0000023','N','Duc Tho','HT00000007');
-----------
insert into TheATM values('1514130970','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'151413097000');
insert into TheATM values('1510110972','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'151011097210');
insert into TheATM values('2524330970','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'252433097009');
insert into TheATM values('3534231960','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'353423196011');
insert into TheATM values('2517180971','C',to_date('31/12/2021', 'DD/MM/YYYY'),10000000,'251718097123');
insert into TheATM values('9710631379','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'971063137987');
insert into TheATM values('1234567890','V',to_date('31/12/2020', 'DD/MM/YYYY'),20000000,'123456789098');
insert into TheATM values('8563827485','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'856382748596');
insert into TheATM values('1048757485','V',to_date('31/12/2017', 'DD/MM/YYYY'),20000000,'104875748564');
insert into TheATM values('1846563875','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'184656387564');
insert into TheATM values('6847643957','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'684764395757');
insert into TheATM values('6847565846','V',to_date('31/12/2020', 'DD/MM/YYYY'),20000000,'684756584647');
insert into TheATM values('0674638364','V',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'067463836474');
insert into TheATM values('6047574643','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'604757464353');
insert into TheATM values('5834645638','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'583464563839');
insert into TheATM values('0574635374','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'057463537475');
insert into TheATM values('0475638365','V',to_date('31/12/2020', 'DD/MM/YYYY'),20000000,'047563836584');
insert into TheATM values('3173630361','C',to_date('31/12/2019', 'DD/MM/YYYY'),10000000,'317363036192');
insert into TheATM values('6775638435','C',to_date('31/12/2018', 'DD/MM/YYYY'),10000000,'677563843554');
insert into TheATM values('9473843748','V',to_date('31/12/2020', 'DD/MM/YYYY'),20000000,'947384374834');
insert into TheATM values('9849854848','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'984985484848');
insert into TheATM values('0585736295','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'058573629586');
insert into TheATM values('0284758685','V',to_date('31/12/2018', 'DD/MM/YYYY'),20000000,'028475868574');
insert into TheATM values('5769369853','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'576936985302');
insert into TheATM values('0574638475','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'057463847585');
insert into TheATM values('0575686755','V',to_date('31/12/2020', 'DD/MM/YYYY'),20000000,'057568675564');
insert into TheATM values('8563827486','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'856382748596');
insert into TheATM values('1234567891','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'123456789098');
insert into TheATM values('1234567892','C',to_date('31/12/2017', 'DD/MM/YYYY'),10000000,'123456789098');
insert into TheATM values('6047574644','C',to_date('31/12/2022', 'DD/MM/YYYY'),10000000,'604757464353');
insert into TheATM values('5834645639','C',to_date('31/12/2020', 'DD/MM/YYYY'),10000000,'583464563839');
-------------
insert into GiaoDich values('GD00000001','1514130970','ATM0000001',to_date('12/02/2013 11:44:04', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000002','1510110972','ATM0000002',to_date('12/02/2012 11:32:12', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000003','2524330970','ATM0000003',to_date('12/02/2014 10:24:56', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000004','3534231960','ATM0000004',to_date('12/02/2013 12:15:40', 'DD/MM/YYYY HH24:MI:SS'),6000000);
insert into GiaoDich values('GD00000005','2517180971','ATM0000005',to_date('11/02/2013 10:21:30', 'DD/MM/YYYY HH24:MI:SS'),1200000);
insert into GiaoDich values('GD00000006','9710631379','ATM0000006',to_date('11/02/2013 12:22:54', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000007','1234567890','ATM0000007',to_date('12/02/2013 12:17:30', 'DD/MM/YYYY HH24:MI:SS'),700000);
insert into GiaoDich values('GD00000008','8563827485','ATM0000008',to_date('11/02/2014 10:02:09', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000009','1048757485','ATM0000009',to_date('12/02/2014 12:59:30', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000010','1846563875','ATM0000010',to_date('14/02/2013 10:30:18', 'DD/MM/YYYY HH24:MI:SS'),6000000);
insert into GiaoDich values('GD00000011','6847643957','ATM0000011',to_date('15/02/2013 10:12:37', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000012','6847565846','ATM0000012',to_date('16/02/2013 12:12:30', 'DD/MM/YYYY HH24:MI:SS'),50000);
insert into GiaoDich values('GD00000013','0674638364','ATM0000010',to_date('17/02/2013 01:16:47', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000014','6047574643','ATM0000014',to_date('18/02/2014 12:15:11', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000015','5834645638','ATM0000015',to_date('19/02/2014 14:12:33', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000016','0574635374','ATM0000010',to_date('21/02/2013 12:14:34', 'DD/MM/YYYY HH24:MI:SS'),6000000);
insert into GiaoDich values('GD00000017','0475638365','ATM0000017',to_date('24/02/2014 15:18:30', 'DD/MM/YYYY HH24:MI:SS'),6700000);
insert into GiaoDich values('GD00000018','3173630361','ATM0000018',to_date('12/02/2013 14:13:40', 'DD/MM/YYYY HH24:MI:SS'),40000);
insert into GiaoDich values('GD00000019','6775638435','ATM0000019',to_date('12/02/2013 17:11:50', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000020','5834645638','ATM0000020',to_date('26/02/2014 18:16:20', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000021','3173630361','ATM0000021',to_date('12/02/2014 18:12:10', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000022','8563827485','ATM0000022',to_date('12/02/2013 21:17:11', 'DD/MM/YYYY HH24:MI:SS'),6000000);
insert into GiaoDich values('GD00000023','2524330970','ATM0000023',to_date('25/02/2013 21:19:23', 'DD/MM/YYYY HH24:MI:SS'),4500000);
insert into GiaoDich values('GD00000024','5834645638','ATM0000010',to_date('12/02/2013 23:13:30', 'DD/MM/YYYY HH24:MI:SS'),40000);
insert into GiaoDich values('GD00000025','9710631379','ATM0000018',to_date('22/02/2013 22:14:30', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000026','1846563875','ATM0000010',to_date('12/02/2013 23:15:30', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000027','5834645638','ATM0000010',to_date('12/02/2014 13:52:30', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000028','3534231960','ATM0000014',to_date('12/02/2013 15:42:30', 'DD/MM/YYYY HH24:MI:SS'),6000000);
insert into GiaoDich values('GD00000029','3173630361','ATM0000006',to_date('12/02/2012 16:31:36', 'DD/MM/YYYY HH24:MI:SS'),1600000);
insert into GiaoDich values('GD00000030','6047574643','ATM0000003',to_date('09/02/2011 06:22:30', 'DD/MM/YYYY HH24:MI:SS'),40000);
insert into GiaoDich values('GD00000031','1510110972','ATM0000023',to_date('12/02/2013 08:11:36', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000032','6847565846','ATM0000017',to_date('05/02/2013 02:19:34', 'DD/MM/YYYY HH24:MI:SS'),100000);
insert into GiaoDich values('GD00000033','9710631379','ATM0000020',to_date('12/02/2013 19:11:30', 'DD/MM/YYYY HH24:MI:SS'),300000);
insert into GiaoDich values('GD00000034','6847643957','ATM0000014',to_date('19/02/2012 17:18:32', 'DD/MM/YYYY HH24:MI:SS'),5000000);
insert into GiaoDich values('GD00000035','9710631379','ATM0000021',to_date('12/02/2012 17:11:32', 'DD/MM/YYYY HH24:MI:SS'),1100000);
insert into GiaoDich values('GD00000036','3173630361','ATM0000023',to_date('28/02/2012 19:13:31', 'DD/MM/YYYY HH24:MI:SS'),40000);
insert into GiaoDich values('GD00000037','3173630361','ATM0000022',to_date('12/02/2013 19:01:31', 'DD/MM/YYYY HH24:MI:SS'),200000);
insert into GiaoDich values('GD00000038','1846563875','ATM0000014',to_date('12/02/2014 12:02:00', 'DD/MM/YYYY HH24:MI:SS'),100000);


commit;