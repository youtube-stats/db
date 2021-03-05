\c youtube;

create table youtube.timeseries.channels
(
	time TIMESTAMPTZ default CURRENT_TIMESTAMP not null,
	id bigserial not null
		constraint channels_channels_id_fk
			references youtube.data.channels,
	subs int,
	vids int,
	views int
);

create unique index channels_time_uindex
	on youtube.timeseries.channels (time);