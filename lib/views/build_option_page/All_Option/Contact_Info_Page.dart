import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app/utils/extension.dart';

class Contact_Info_Page extends StatefulWidget {
  const Contact_Info_Page({super.key});

  @override
  State<Contact_Info_Page> createState() => _Contact_Info_PageState();
}

class _Contact_Info_PageState extends State<Contact_Info_Page> {
  int index = 0;

  void setIndex(int i) {
    setState(() {
      index = i;
    });
  }
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
          icon: const Icon(Icons.arrow_back_rounded,
          color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Contact Information",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(0);
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 0 ? 5 : 0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                10.w,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(1);
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 5 : 0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: IndexedStack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            20.h,
                            TextFormField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: "Name",
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hintText: "Enter name",
                                prefixIcon: const Icon(Icons.person,
                                color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            20.h,
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIconColor: Colors.black,
                                labelText: "Contact",
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hintText: "Enter Number",
                                prefixIcon: Icon(Icons.phone_outlined,
                                color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                            ),
                            20.h,
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: "Email",
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hintText: "Enter E-mail",
                                prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                            ),
                            20.h,
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: "Password",
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hintText: "Enter Password",
                                prefixIcon: Icon(CupertinoIcons.padlock_solid,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                            ),
                            20.h,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
