class LevelByCourse {
    int status;
    String message;
    int isPurchased;
    LastUnlocked lastUnlocked;
    LastAttendedExam lastAttendedExam;
    List<Datum> data;
    Package package;

    LevelByCourse({
        required this.status,
        required this.message,
        required this.isPurchased,
        required this.lastUnlocked,
        required this.lastAttendedExam,
        required this.data,
        required this.package,
    });

}

class Datum {
    String id;
    String title;
    int index;
    IsLocked isLocked;
    List<Section> sections;
    Completion completion;
    dynamic exam;

    Datum({
        required this.id,
        required this.title,
        required this.index,
        required this.isLocked,
        required this.sections,
        required this.completion,
        required this.exam,
    });

}

enum Completion {
    THE_02
}

class ExamClass {
    String id;
    String title;
    String levelTitle;
    IsLocked free;
    String link;
    int isAttended;
    int isAttendedNew;

    ExamClass({
        required this.id,
        required this.title,
        required this.levelTitle,
        required this.free,
        required this.link,
        required this.isAttended,
        required this.isAttendedNew,
    });

}

enum IsLocked {
    OFF,
    ON
}

class Section {
    String id;
    Title title;
    String thumbnail;
    String icon;
    IsLocked free;
    int isAttendedNew;
    int isAttended;
    int isCompleted;
    int total;
    VideoCount videoCount;
    int completed;

    Section({
        required this.id,
        required this.title,
        required this.thumbnail,
        required this.icon,
        required this.free,
        required this.isAttendedNew,
        required this.isAttended,
        required this.isCompleted,
        required this.total,
        required this.videoCount,
        required this.completed,
    });

}

enum Title {
    MALAYALAM,
    PSYCHOLOGY
}

enum VideoCount {
    THE_0_VIDEOS,
    THE_1_VIDEOS
}

class LastAttendedExam {
    LastAttendedExam();
}

class LastUnlocked {
    String id;
    String title;
    int index;
    IsLocked isLocked;

    LastUnlocked({
        required this.id,
        required this.title,
        required this.index,
        required this.isLocked,
    });

}

class Package {
    CoursePrice coursePrice;

    Package({
        required this.coursePrice,
    });

}

class CoursePrice {
    String id;
    String packageName;
    String type;
    String courseId;
    String sectionId;
    String amount;
    String discount;
    dynamic isFree;
    String packageType;
    String remarks;
    String validity;
    String validityInMonth;
    String razorpayApiKey;
    String subtitle;
    String totalAmount;
    String payableAmount;

    CoursePrice({
        required this.id,
        required this.packageName,
        required this.type,
        required this.courseId,
        required this.sectionId,
        required this.amount,
        required this.discount,
        required this.isFree,
        required this.packageType,
        required this.remarks,
        required this.validity,
        required this.validityInMonth,
        required this.razorpayApiKey,
        required this.subtitle,
        required this.totalAmount,
        required this.payableAmount,
    });

}
