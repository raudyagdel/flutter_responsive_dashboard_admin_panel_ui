class RecentFileModel {
  final String? icon, title, date, size;

  RecentFileModel({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFileModel(
    icon: "assets/icons/svn.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/git.svg",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFileModel(
    icon: "assets/icons/git.svg",
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/git.svg",
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/git.svg",
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFileModel(
    icon: "assets/icons/git.svg",
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/svn.svg",
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
