create table PHIEUXUAT(
SoPX int primary key auto_increment,
NgayXuat date
);

create table VATTU(
MaVTU int primary key auto_increment,
TenVTU varchar(255)
);
create table PHIEUNHAP(
SoPN int primary key auto_increment,
NgayNhap date
);

create table DONDH(
SoDH int primary key auto_increment,
NgayDH date
);

create table NHACC(
MaNCC int primary key auto_increment,
TenNCC varchar(255),
DiaChi varchar(255),
SDT varchar(255)
);

create table CTPX(
DGXuat int,
SLXuat int,
CTPXSoPX int,
foreign key (CTPXSoPX) references PHIEUXUAT (SoPX), 
CTPXMaVTU int,
foreign key(CTPXMaVTU) references VATTU(MaVTU)
);

create table CTPN(
DGNhap int,
SLNhap int,
CTPNMaVTU int,
foreign key (CTPNMaVTU) references VATTU(MaVTU),
CTPNSoPN int,
foreign key (CTPNSoPN) references PHIEUNHAP (SoPN));

create table CTDDH(
CTDDHMaVTU int,
foreign key (CTDDHMaVTU) references VATTU (MaVTU),
CTDDHSoDH int,
foreign key (CTDDHSoDH) references DONDH (SoDH));