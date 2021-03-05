\c youtube;

create table youtube.data.channels
(
	id bigserial not null,
	serial char(24) not null
);

create unique index channels_id_uindex
	on youtube.data.channels (id);

create unique index channels_serial_uindex
	on youtube.data.channels (serial);

alter table youtube.data.channels
	add constraint channels_pk
		primary key (id);

