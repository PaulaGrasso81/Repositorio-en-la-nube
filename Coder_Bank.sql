create schema coder_bank;
use coder_bank;

create table user_information (
id_user int auto_increment,
user_passw varchar (8) not null,
tit_cuenta varchar (50) not null,
email varchar (40) not null,
fecha_nac date not null,
dni int not null,
passport varchar (9),
cuil_cuit int not null,
domicilio varchar (20) not null,
localidad text (15) not null,
distrito text (20) not null,
provincia text (15) not null,
cod_postal int not null,
CONSTRAINT PK_user_information PRIMARY KEY (id_user)
);

create table compartir_alias (
id_user int,
tit_cuenta varchar (50) not null,
cbu_cvu int not null,
numero_cuenta varchar (15) not null,
alias text (15) not null,
CONSTRAINT PK_compartir_alias PRIMARY KEY (id_user)
);

create table programa_referidos (
id_user int not null, 
cod_invitation varchar (10) not null,
id_referido int not null,
coupon bool not null,
CONSTRAINT PK_programa_referidos PRIMARY KEY (id_user)
);

create table tarjetas (
id_user int not null,
debito_visa int not null,
credito_visa int not null,
credito_amex int not null,
CONSTRAINT PK_tarjetas PRIMARY KEY (id_user)
);

create table inversiones (
id_user int not null,
plazo_fijo boolean not null,
cedears boolean not null,
dolar_met boolean not null,
tit_en_pesos boolean not null,
fondos_com_de_inv boolean null,
cauciones_bursatiles boolean not null,
CONSTRAINT PK_inversiones PRIMARY KEY (id_user)
);

create table agenda_destinatarios (
id_user int,
tit_destinatario varchar (50) not null,
cbu_cvu_dest int not null,
alias_dest text (15) not null,
cuil_cuit_dest int not null,
bco_dest text (20) not null,
CONSTRAINT PK_agenda_destinatarios PRIMARY KEY (id_user)
);

create table transferencias (
id_user int,
fecha_transf datetime not null,
tit_cuenta varchar (50) not null,
tit_destinatario varchar (50) not null,
cbu_cvu_dest int not null, 
alias_dest text (15) not null,
cuil_cuit_dest int not null,
banco_dest text (20) not null, 
CONSTRAINT PK_transferencias PRIMARY KEY (tit_destinatario)
);

create table recibo_de_transferencia (
importe_ars numeric not null,
importe_usd numeric not null,
fecha_transf datetime not null,
tit_cuenta varchar (50) not null,
tit_destinatario varchar (50) not null,
cbu_cvu_dest int not null,
alias_dest text (15) not null,
cuil_cuit_dest int not null,
banco_dest text (20) not null,
motivo enum ('varios', 'prestamos', 'factura', 'expensas', 'honorarios', 'alquiler'),
PRIMARY KEY (tit_destinatario)
);

