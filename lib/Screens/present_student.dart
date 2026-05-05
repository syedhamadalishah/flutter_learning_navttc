import 'package:first_class_1/Provider/attendance_managementProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PresentStudent extends StatefulWidget {
  const PresentStudent({super.key});

  @override
  State<PresentStudent> createState() => _PresentStudentState();
}

class _PresentStudentState extends State<PresentStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, color: Colors.white),
            Text(
              'Attendance Management',
              style: TextStyle(color: Colors.white),
            ),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 63, 81, 181),
      ),
      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 135,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 219, 224),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Attendance Summary',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.groups_2,
                                color: Colors.blue,
                                size: 30,
                              ),
                              Text(
                                'Total',
                                style: GoogleFonts.poppins(fontSize: 17),
                              ),
                              Text(
                                '20',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green),
                              Text(
                                'Present',
                                style: GoogleFonts.poppins(fontSize: 17),
                              ),
                              Text(
                                '16',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.cancel, color: Colors.redAccent),
                              Text(
                                'Absent',
                                style: GoogleFonts.poppins(fontSize: 17),
                              ),
                              Text(
                                '4',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 11,
                itemBuilder: (context, index) {
                  return Consumer<AttendanceManagementprovider>(
                    builder: (context, studentss, child) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            studentss.students[index]['image'].toString(),
                          ),
                        ),
                        title: Text(
                          studentss.students[index]['name'].toString(),
                        ),
                        subtitle: Text(
                          studentss.students[index]['Roll No.'].toString(),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            if (studentss.present_students.contains(index)) {
                              studentss.remove_Student(index);
                            } else {
                              studentss.add_Student(index);
                            }
                            if (studentss.present_students.contains(index)) {
                              studentss.present();
                              studentss.changeColor();
                            } else {
                              studentss.absent();
                            }
                          },
                          child: Container(
                            width: 90,
                            height: 35,
                            decoration: BoxDecoration(
                              color: studentss.isColor
                                  ? const Color.fromARGB(255, 255, 142, 179)
                                  : Colors.greenAccent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  studentss.present_students.contains(index)
                                      ? Icons.check_circle_outline
                                      : Icons.cancel,
                                ),
                                Text(
                                  studentss.present_students.contains(index)
                                      ? 'Present'
                                      : 'Absent',
                                  style: GoogleFonts.inter(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Consumer<AttendanceManagementprovider>(
              builder: (context, std, child) {
                return InkWell(
                  onTap: () {
                    std.reset_Attendance();
                  },
                  child: Container(
                    width: 215,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 63, 81, 181),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.restart_alt, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'Reset Attendance',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
