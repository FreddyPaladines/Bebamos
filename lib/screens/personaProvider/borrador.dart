import 'package:bebemos/screens/personaProvider/providerdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'model.dart';

class PersonaPagina extends StatefulWidget {
  @override
  State<PersonaPagina> createState() => _PersonaPaginaState();
}

class _PersonaPaginaState extends State<PersonaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Seleccionarjugadores()],
      ),
    );
  }
}


/* 0xFFFDECEF */
class Eleccionjugadores extends StatelessWidget {
  const Eleccionjugadores({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDECEF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Consumer<Datajugadores>(
            builder: (context, value, child) => 
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(6),),
              child:DropdownButton<String>(
                value: value.selectedCGenreo,
                onChanged: (String? v){
                  value.setGeneroValue(v);
                },
                items: value.generoDrownList.map((value) {
                  return DropdownMenuItem(value:value, child: Text(value), );
                }).toList(),
              )

              )
                ),






            )
            ),
      )
      );
  }
}


class Seleccionarjugadores extends StatefulWidget {
  const Seleccionarjugadores({Key? key}) : super(key: key);

  @override
  State<Seleccionarjugadores> createState() => _SeleccionarjugadoresState();
}

class _SeleccionarjugadoresState extends State<Seleccionarjugadores> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _controller;
  var taskItems;
  int counter = 0;
  late DynamicList listClass;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _formKey = GlobalKey();
    _controller = TextEditingController();
    taskItems = Provider.of<ListProvider>(context, listen: false);
    listClass = DynamicList(taskItems.list);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    onSaved: (val) {
                      taskItems.addItem(val);
                    },
                    validator: (val) {
                      if (val!.length > 0) {
                        return null;
                      } else
                        return 'Add a text';
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: Text('Add'),
                ),
              ),
              Consumer<ListProvider>(builder: (context, provider, listTile) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: listClass.list.length,
                    itemBuilder: buildList,
                  ),
                );
              }),
            ],
          ),



    );


  }
  Widget buildList(BuildContext context, int index) {
    counter++;
    return Dismissible(
        key: Key(counter.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          taskItems.deleteItem(index);
        },
        child: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text(listClass.list[index].toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ));
  }
  
  
  
  
  
  
  
  
  
  
  
  }
