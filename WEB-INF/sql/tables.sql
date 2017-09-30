create table movieLib_movie (
	uuid_ VARCHAR(75) null,
	movieId LONG not null primary key,
	movieName VARCHAR(75) null,
	producerName VARCHAR(75) null,
	createDate DATE null,
	carrierType VARCHAR(75) null
);