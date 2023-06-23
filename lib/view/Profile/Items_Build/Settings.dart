import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';


// ignore: camel_case_types
class Settings_Build extends StatefulWidget {
  const Settings_Build({super.key});

  @override
  State<Settings_Build> createState() => _Settings_BuildState();
}

// ignore: camel_case_types
class _Settings_BuildState extends State<Settings_Build> {
  bool _pushNotification = false;
  bool _darkMode = false;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkMode ?const Color.fromARGB(255, 44, 142, 233) :const Color.fromARGB(255, 204, 185, 185),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: _darkMode ? Colors.white : Colors.black,
            )),
        backgroundColor: _darkMode ? const Color.fromARGB(255, 16, 42, 122) : const Color.fromARGB(255, 237, 175, 83),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "assets/icons/6_.png",
            //   color: _darkMode ? Colors.white : Colors.black,
            // ),
            const SizedBox(
              width: 10,
            ),
            Text("Settings",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      letterSpacing: .5),
                )),
            const SizedBox(
              width: 58,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const CircleAvatar(
                  minRadius: 30,
                  maxRadius: 35,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              title: Text(
                "Muslimbek",
                style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Active",
                    style: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 40,
                child: Text(
                  "Account Settings",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: _darkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        letterSpacing: .4),
                  ),
                ),
              ),
            ),
            ExpansionTile(
              title: Text(
                "Edit profile",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.last_page_rounded,
                color: _darkMode ? Colors.white : Colors.black,
              ),
            ),
            ExpansionTile(
              title: Text(
                "Change password",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.last_page_rounded,
                color: _darkMode ? Colors.white : Colors.black,
              ),
            ),
            ExpansionTile(
              title: Text(
                "Add a payment ",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.add,
                color: _darkMode ? Colors.white : Colors.black,
              ),
            ),
            ExpansionTile(
                title: Text(
                  "Push notifications ",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: _darkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        letterSpacing: .4),
                  ),
                ),
                trailing: Switch.adaptive(
                  onChanged: (value) {
                    setState(() {
                      _pushNotification = value;
                    });
                  },
                  value: _pushNotification,
                )),
            ExpansionTile(
                title: Text(
                  "Dark mode",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: _darkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        letterSpacing: .4),
                  ),
                ),
                trailing: Switch.adaptive(
                  onChanged: (value) {
                    setState(() {
                      _darkMode = value;
                    });
                  },
                  value: _darkMode,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 16),
              child: SizedBox(
                height: 60,
                child: Text(
                  "More",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: _darkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        letterSpacing: .4),
                  ),
                ),
              ),
            ),
            ExpansionTile(
              title: Text(
                "About us",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.last_page_rounded,
                color: _darkMode ? Colors.white : Colors.black,
              ),
            ),
            ExpansionTile(
              title: Text(
                "Privacy policy",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.last_page_rounded,
                color: _darkMode ? Colors.white : Colors.black,
              ),
            ),
            ExpansionTile(
              title: Text(
                "Terms and conditions",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: _darkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: .4),
                ),
              ),
              trailing: Icon(
                Icons.last_page_rounded,
                color: _darkMode ? Colors.white : Colors.black,
              ),
              children: const [],
            ),
          ],
        ),
      ),
    );
  }
}
