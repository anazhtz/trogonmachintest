class CourseModel {
    int status;
    String message;
    Data data;

    CourseModel({
        required this.status,
        required this.message,
        required this.data,
    });

}

class Data {
    Userdata userdata;
    List<Subject> subjects;
    List<dynamic> pyqExams;
    List<dynamic> upcomingExams;
    String syllabus;
    String practiceLink;
    int isValidLogin;
    String validityMessage;

    Data({
        required this.userdata,
        required this.subjects,
        required this.pyqExams,
        required this.upcomingExams,
        required this.syllabus,
        required this.practiceLink,
        required this.isValidLogin,
        required this.validityMessage,
    });

}

class Subject {
    String id;
    String title;
    String courseId;
    dynamic levelId;
    String order;
    String thumbnail;
    String background;
    String icon;
    String free;
    dynamic instructorId;
    String oldSectionId;

    Subject({
        required this.id,
        required this.title,
        required this.courseId,
        required this.levelId,
        required this.order,
        required this.thumbnail,
        required this.background,
        required this.icon,
        required this.free,
        required this.instructorId,
        required this.oldSectionId,
    });

}

class Userdata {
    String id;
    String firstName;
    String lastName;
    String phone;
    String countryCode;
    dynamic phoneSecondary;
    String userEmail;
    String email;
    String gender;
    String place;
    String roleId;
    String roleLabel;
    String deviceId;
    String status;
    String courseId;
    String courseName;
    String courseType;
    String image;
    dynamic androidVersion;
    String deviceIdMessage;
    String noCourseText;
    String noCourseImage;
    String contactEmail;
    String contactPhone;
    String contactWhatsapp;
    String contactAddress;
    String contactAbout;
    String zoomId;
    String zoomPassword;
    String zoomApiKey;
    String zoomSecretKey;
    String zoomWebDomain;
    String token;
    String privacyPolicy;
    String privacyPolicyText;
    String coins;

    Userdata({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.phone,
        required this.countryCode,
        required this.phoneSecondary,
        required this.userEmail,
        required this.email,
        required this.gender,
        required this.place,
        required this.roleId,
        required this.roleLabel,
        required this.deviceId,
        required this.status,
        required this.courseId,
        required this.courseName,
        required this.courseType,
        required this.image,
        required this.androidVersion,
        required this.deviceIdMessage,
        required this.noCourseText,
        required this.noCourseImage,
        required this.contactEmail,
        required this.contactPhone,
        required this.contactWhatsapp,
        required this.contactAddress,
        required this.contactAbout,
        required this.zoomId,
        required this.zoomPassword,
        required this.zoomApiKey,
        required this.zoomSecretKey,
        required this.zoomWebDomain,
        required this.token,
        required this.privacyPolicy,
        required this.privacyPolicyText,
        required this.coins,
    });

}
