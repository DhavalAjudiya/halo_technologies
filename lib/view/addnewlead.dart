import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halo_technologies/widget/customtextfield.dart';
import 'package:velocity_x/velocity_x.dart';

class AddNewLead extends StatefulWidget {
  const AddNewLead({Key? key}) : super(key: key);

  @override
  _AddNewLeadState createState() => _AddNewLeadState();
}

class _AddNewLeadState extends State<AddNewLead> {
  final formkey = GlobalKey<FormState>();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final emailid = TextEditingController();
  final mobile = TextEditingController();
  final phone = TextEditingController();
  final brithdaydate = TextEditingController();
  final centre = TextEditingController();
  final assigned = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: size.height * 0.05,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Customer Information",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                35.heightBox,
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      _firstname(),
                      10.heightBox,
                      _lastname(),
                      10.heightBox,
                      _emailid1(),
                      10.heightBox,
                      _emailid(),
                      10.heightBox,
                      _mobilenumber(),
                      10.heightBox,
                      _phonenumber(),
                      10.heightBox,
                      _brithdate(),
                      10.heightBox,
                      _center(),
                      10.heightBox,
                      _assigned(),
                    ],
                  ),
                ),
                50.heightBox,
                Container(
                  alignment: Alignment.center,
                  height: size.height * 0.05,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Lead information",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                35.heightBox,
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Sales force id",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        // controller: firstname,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Lead Status",
                          hintText: "Lead Status",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: lastname,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Lead Description",
                          hintText: "Lead Description",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: email,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Reason for Others,Dead and Invalid",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: emailid,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        decoration: InputDecoration(
                          labelText: "Lead Sources",
                          hintText: "Lead Sources",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: mobile,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        decoration: InputDecoration(
                          labelText: "More Details",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: phone,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Campaign",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: brithdaydate,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "KeyWords",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Registration date",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Plan to Start",
                          hintText: "Plan to Star",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Lead Action",
                          hintText: "Lead Action",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Source Details",
                          hintText: "Source Details",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Enquiry Generation Date",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Location",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      10.heightBox,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Admission date",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // controller: centre,
                        // validator: (value) {
                        //   if (value == null) {
                        //     return "required";
                        //   }
                        // },
                      ),
                      40.heightBox,
                      SizedBox(
                        width: size.width * 1,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {}
                          },
                          child: const Text("Submit"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _firstname() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter First name',
      labletext: 'Frist Name',
      controller: firstname,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _lastname() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Last name',
      labletext: 'Last Name',
      controller: lastname,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _emailid1() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Email id',
      labletext: 'Email 1',
      controller: emailid,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _emailid() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Email',
      labletext: 'Eamil 2',
      controller: email,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _mobilenumber() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Mobile Number',
      labletext: 'Mobile Number',
      controller: mobile,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _phonenumber() {
    return CustomTextFormFiled(
      hinttext: 'Enter Phone Number',
      color: Colors.black,
      labletext: 'Phone Number',
      controller: phone,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _brithdate() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Birth Date ',
      labletext: "Birth Date",
      controller: brithdaydate,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _center() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'Enter Center',
      labletext: 'Center',
      controller: centre,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }

  Widget _assigned() {
    return CustomTextFormFiled(
      color: Colors.black,
      hinttext: 'All executiveAssigned to',
      labletext: 'Assigned to',
      controller: firstname,
      validator: (value) {
        if (value == null) {
          return "required";
        }
      },
    );
  }
}
