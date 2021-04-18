import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(
          Icons.local_library,
          color: Colors.white,
        ),
        title: Text('Tambah Transaksi'),
        actions: [],
      ),
     body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children:<Widget>[

           Text("Keterangan:",
              style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
              ),
               SizedBox(height: 15.0,),

            TextFormField(
              validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Nama Lengkap';
              }
              return null;
              },   
            decoration: InputDecoration(
              hintText: 'Nama',
              suffixIcon: Icon(Icons.create),
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),

              SizedBox(height: 20.0,),
               TextFormField(   
                validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Perihal Catatan';
              }
              return null;
              },   
            decoration: InputDecoration(
              hintText: 'Perihal',
              suffixIcon: Icon(Icons.create),
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),

              SizedBox(height: 20.0,),

          TextFormField(
              validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Tanggal Transaksi';
              }
              return null;
              },  
            decoration: InputDecoration(
              hintText: 'Tanggal Transaksi',
              suffixIcon: Icon(Icons.date_range_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),
          
           SizedBox(height: 20.0,),

            TextFormField(
           validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Jumlah Transaksi';
              }
              return null;
              },   
            decoration: InputDecoration(
              hintText: 'Jumlah Transaksi',
              suffixIcon: Icon(Icons.line_weight_rounded),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),
          
           SizedBox(height: 20.0,),
            TextFormField(
              validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Alamat Lengkap';
              }
              return null;
              },  
            decoration: InputDecoration(
              hintText: 'Alamat',
              suffixIcon: Icon(Icons.add_location),
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),
          
          SizedBox(height: 30.0,),
          Text("Deskripsi tambahan:",
              style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
              ),
               SizedBox(height: 15.0,),
               
          TextFormField(
              validator: (value) {
              if (value.isEmpty) {
              return 'Mohon isi Deskripsi Tambahan';
              }
              return null;
              },  
            decoration: InputDecoration(
              hintText: 'Deskripsi',
              suffixIcon: Icon(Icons.create),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            ),
          ),

         Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
              ),
          ),

          ]
        ),
        ),
    );

  }
}