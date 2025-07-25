import 'package:flutter/material.dart';
import 'package:my_project/helpers/size_helper.dart';
import 'package:my_project/belajar_form/form_output_screen.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController jkController = TextEditingController();
  final TextEditingController tglLahirController = TextEditingController();

  String? _agama;

  final List<String> agama = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Buddha",
    "Konghucu",
  ];

  @override
  void initState() {
    super.initState();
    tglLahirController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            "Formulir Biodata",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(height: 18),
                          TextFormField(
                            controller: namaController,
                            decoration: InputDecoration(
                              hintText: "Nama Lengkap",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Nama';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),
                          TextFormField(
                            controller: jkController,
                            decoration: const InputDecoration(
                              hintText: "Jenis Kelamin",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Jenis Kelamin';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),
                          TextFormField(
                            controller: tglLahirController,
                            decoration: const InputDecoration(
                              hintText: "Tanggal Lahir",
                              border: OutlineInputBorder(),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  tglLahirController.text =
                                      DateFormat("yyyy-MM-dd").format(pickedDate);
                                });
                              } else {
                                print("Tanggal tidak dipilih");
                              }
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Tanggal Lahir';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),
                          DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              hintText: "Agama",
                              labelText: "Pilih Agama",
                              border: OutlineInputBorder(),
                            ),
                            items: agama.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _agama = newValue;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Pilih Agama';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            width: displayWidth(context) * 0.8,
                            height: displayHeight(context) * 0.07,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  side: const BorderSide(color: Colors.black),
                                ),
                              ),
                              onPressed: _submit,
                              child: const Text(
                                'Simpan',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: namaController.text,
            jk: jkController.text,
            tglLahir: tglLahirController.text,
            agama: _agama ?? "",
          ),
        ),
      );
    }
  }
}
