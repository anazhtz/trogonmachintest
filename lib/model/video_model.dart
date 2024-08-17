class VideoLesson {
    String status;
    String message;
    Data data;

    VideoLesson({
        required this.status,
        required this.message,
        required this.data,
    });

}

class Data {
    List<dynamic> videoList;
    LastWatched lastWatched;

    Data({
        required this.videoList,
        required this.lastWatched,
    });

}

class LastWatched {
    String uniqueId;
    String duration;

    LastWatched({
        required this.uniqueId,
        required this.duration,
    });

}
