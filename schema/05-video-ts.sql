\c youtube;

create table youtube.timeseries.videos
(
	time TIMESTAMPTZ default CURRENT_TIMESTAMP not null,
	id bigserial not null
		constraint videos_videos_id_fk
			references youtube.data.videos,
	views int,
	likes int,
	dislikes int,
	comments int
);

create unique index videos_time_uindex
	on youtube.timeseries.videos (time);