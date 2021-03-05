\c youtube;

create table youtube.data.videos
(
	id bigserial not null,
	serial char(11) not null
);

create unique index videos_id_uindex
	on youtube.data.videos (id);

create unique index videos_serial_uindex
	on youtube.data.videos (serial);

alter table youtube.data.videos
	add constraint videos_pk
		primary key (id);

