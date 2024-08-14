import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/utils/extension.dart';

class Contact_Info_Page extends StatefulWidget {
  const Contact_Info_Page({super.key});

  @override
  State<Contact_Info_Page> createState() => _Contact_Info_PageState();
}

class _Contact_Info_PageState extends State<Contact_Info_Page> {
  int index = 0;
  bool hide = true;

  String? name , contact , email , password ,address;
  // Formkey

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
                    index: index,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: SingleChildScrollView(
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                20.h,
                                TextFormField(
                                  validator: (val)
                                  {
                                    if (val!.isEmpty)
                                      {
                                        return "Please Enter Name";
                                      }
                                      else{
                                        return null;
                                    }
                                  },
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  style: const TextStyle(
                                    color: Colors.black,
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
                                  validator: (val) {
                                    if (val!.isEmpty)
                                      {
                                        return "Please Enter number ";
                                      }
                                    else{
                                      return null;
                                    }
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  maxLength: 10,
                                  controller: contactController,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  style: const TextStyle(
                                    color: Colors.black,
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
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Email";
                                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val))
                                    {
                                      return "Please Enter a valid Email";
                                    }
                                    else {
                                      return null;
                                    }
                                  },
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  style: const TextStyle(
                                    color: Colors.black,
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
                                  validator: (val)
                                  {
                                    if (val!.isEmpty)
                                        {
                                          return "Please Enter Address";
                                        }
                                        else
                                          {
                                            return null;
                                          }
                                  },
                                  controller: addressController,
                                  keyboardType: TextInputType.streetAddress,
                                  textInputAction: TextInputAction.done,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: "Address",
                                    floatingLabelBehavior: FloatingLabelBehavior.never,
                                    hintText: "Enter Address",
                                    prefixIcon: Icon(
                                      CupertinoIcons.location_solid,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                  ),
                                ),
                                // 20.h,
                                // TextFormField(
                                //   validator: (val) {
                                //     if(val!.isEmpty)
                                //       {
                                //         return "Please Enter Password";
                                //       }
                                //     {
                                //       return null;
                                //     }
                                //   },
                                //   controller: passwordController,
                                //   keyboardType: TextInputType.visiblePassword,
                                //   textInputAction: TextInputAction.done,
                                //   obscureText: hide,
                                //   style: const TextStyle(
                                //     color: Colors.black,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                //   decoration: InputDecoration(
                                //     filled: true,
                                //     fillColor: Colors.white,
                                //     labelText: "Password",
                                //     floatingLabelBehavior: FloatingLabelBehavior.never,
                                //     hintText: "Enter Password",
                                //     prefixIcon: const Icon(
                                //       CupertinoIcons.padlock_solid,
                                //       color: Colors.black,
                                //     ),
                                //     border: const OutlineInputBorder(
                                //       borderRadius: BorderRadius.all(Radius.circular(30)),
                                //     ),
                                //     suffixIcon: IconButton(
                                //       onPressed: () {
                                //         setState(() {
                                //           hide = !hide;
                                //         });
                                //       },
                                //       icon: Icon(
                                //         hide
                                //             ? Icons.visibility
                                //             : Icons.visibility_off,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                20.h,
                                Text("Name : ${nameController.text}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text("Contact : ${contactController.text}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text("email : ${emailController.text}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text("Password : ${passwordController.text}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                20.h,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                      nameController.clear();
                                      contactController.clear();
                                      emailController.clear();
                                      // passwordController.clear();
                                      addressController.clear();
                                      setState(() {});
                                    },
                                        child: const Text("RESEAT",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        bool validated =
                                        formKey.currentState!.validate();
                                    },
                                        child: const Text("SAVE",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
