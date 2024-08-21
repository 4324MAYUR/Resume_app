import 'package:flutter/material.dart';
import 'package:resume_app/globals.dart';

class Personal_Details_Page extends StatefulWidget {
  const Personal_Details_Page({super.key});

  @override
  State<Personal_Details_Page> createState() => _Personal_Details_PageState();
}

class _Personal_Details_PageState extends State<Personal_Details_Page> {

  List<String> availableLanguage = [
    "Hindi",
    "English",
    "Gujarati"
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, 'Build_option_page');
          },
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Personal Details",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Select your gender"),
              RadioListTile(
                title: const Text("Male"),
                  value: "Male",
                  groupValue: Globals.gender,
                  onChanged: (val)
                  {
                    Globals.gender = val;
                    setState(() {});
                  },
              ),
              RadioListTile(
                title: const Text("Female"),
                  value: "Female",
                  groupValue: Globals.gender,
                  onChanged: (val)
                  {
                    Globals.gender = val;
                    setState(() {});
                  },
              ),

              const Text("Select the languages :"),
              ...availableLanguage.map(
                  (e) => CheckboxListTile(
                    title: Text(e),
                      value: Globals.language.contains(e),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val)
                      {
                        if (val!)
                          {
                            Globals.language.add(e);
                          }
                        else
                          {
                            Globals.language.remove(e);
                          }
                        setState(() {});
                      }
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
