class Course {
  final String title;
  final String instructor;
  final String imagePath;
  final String description;

  Course({
    required this.title,
    required this.instructor,
    required this.imagePath,
    required this.description,
  });
}

List<Course> courses = [
  Course(
    title: 'Video Editing',
    instructor: 'Andy J. Pizza',
    imagePath: 'lib/assets/ve.jpeg',
    description: 'Learn the art of video editing and enhance your skills in creating professional videos.',
  ),
  Course(
    title: '3D Rendering',
    instructor: 'Saidul Islam',
    imagePath: 'lib/assets/3d.jpeg',
    description: 'Master the techniques of 3D rendering and bring your models to life.',
  ),
  Course(
    title: 'Digital Marketing',
    instructor: 'Wahab I.',
    imagePath: 'lib/assets/DIGITAL-MARKETING.jpg',
    description: 'Understand the fundamentals of digital marketing and how to apply them effectively.',
  ),
  Course(
    title: 'Graphic Design',
    instructor: 'John Doe',
    imagePath: 'lib/assets/gd.jpeg',
    description: 'Explore the principles of graphic design.',
  ),
  Course(
    title: 'Game Development',
    instructor: 'Jane Doe',
    imagePath: 'lib/assets/game.jpeg',
    description: 'Learn game development from scratch.',
  ),
  Course(
    title: 'Photography',
    instructor: 'Mike Smith',
    imagePath: 'lib/assets/photo.jpeg',
    description: 'Enhance your photography skills.',
  ),
];

List<Course> savedCourses = [
  Course(
    title: 'Crypto Trading Advance',
    instructor: 'John Trader',
    imagePath: 'lib/assets/th.jpeg',
    description: 'Advanced techniques in crypto trading.',
  ),
  Course(
    title: 'Graphic Design and Video Editing',
    instructor: 'Sarah Artist',
    imagePath: 'lib/assets/gd.jpeg',
    description: 'Combine graphic design and video editing skills.',
  ),
];
