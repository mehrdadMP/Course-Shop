/* class Courses {
  final String courseName;
  final String coursePrice;
  final String teacherName;
  final String courseLength;
  final String courseSessionNumber;

  Courses({
    required this.courseName,
    required this.coursePrice,
    required this.teacherName,
    required this.courseLength,
    required this.courseSessionNumber,
  });
}

class AllCourses {
  final int id;
  final String title;
  final String imageFileName;

  AllCourses(
      {required this.id, required this.title, required this.imageFileName});
}

class Post {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookMarked;
  final String imageFileName;

  Post(
      {required this.id,
      required this.caption,
      required this.title,
      required this.likes,
      required this.time,
      required this.isBookMarked,
      required this.imageFileName});
}

class AppData {
  static List<Courses> get stories {
    return [
      Courses(
        id: 101,
        name: 'Mehrdad',
        imageFileName: 'Profile-(9).jpg',
        iconFileName: 'video-camera.png',
        isViewed: true,
      ),
      Courses(
        id: 102,
        name: 'Sara',
        imageFileName: 'Profile-(1).jpg',
        iconFileName: 'video-camera.png',
        isViewed: false,
      ),
      Courses(
        id: 103,
        name: 'Farhad',
        imageFileName: 'Profile-(5).jpg',
        iconFileName: 'video-camera.png',
        isViewed: true,
      ),
      Courses(
        id: 104,
        name: 'Sasan',
        imageFileName: 'Profile-(10).jpg',
        iconFileName: 'video-camera.png',
        isViewed: false,
      ),
      Courses(
        id: 105,
        name: 'Samira',
        imageFileName: 'Profile-(2).jpg',
        iconFileName: 'video-camera.png',
        isViewed: false,
      ),
      Courses(
        id: 106,
        name: 'Sina',
        imageFileName: 'Profile-(11).jpg',
        iconFileName: 'video-camera.png',
        isViewed: false,
      ),
      Courses(
        id: 107,
        name: 'Kimia',
        imageFileName: 'Profile-(3).jpg',
        iconFileName: 'video-camera.png',
        isViewed: false,
      ),
    ];
  }

  static List<AllCourses> get categories {
    return [
      AllCourses(
        id: 1001,
        title: 'Technology',
        imageFileName: 'Technology.jpg',
      ),
      AllCourses(
        id: 1002,
        title: 'Sport',
        imageFileName: 'Sport.jpg',
      ),
      AllCourses(
        id: 1003,
        title: 'Science',
        imageFileName: 'Science.jpg',
      ),
      AllCourses(
        id: 1004,
        title: 'Polities',
        imageFileName: 'Polities.jpg',
      ),
      AllCourses(
        id: 1005,
        title: 'Adventure',
        imageFileName: 'Adventure.jpg',
      ),
      AllCourses(
        id: 1006,
        title: 'Cars',
        imageFileName: 'Cars.jpg',
      )
    ];
  }

  static List<Post> get posts {
    return [
      Post(
        id: 100001,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
      Post(
        id: 10002,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
      Post(
        id: 10003,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
      Post(
        id: 10004,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
      Post(
        id: 10005,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
      Post(
        id: 10006,
        imageFileName: 'Profile-(9).jpg',
        caption: 'Empty',
        title: 'Empty',
        likes: '0',
        time: '0',
        isBookMarked: false,
      ),
    ];
  }
}
 */