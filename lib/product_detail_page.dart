import 'package:flutter/material.dart';
// 받아올 정보 공간

class ProductDetailPage extends StatefulWidget{

  //전달 받은  값을 저장할 변수
  final String name;
  final String price;
  final String image;
  final String desc;

  ProductDetailPage({ //생성자 - 값을 받아서 변수에 저장
    required this.name,
    required this.price,
    required this.image,
    required this.desc,
  });


  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

//실제 UI
class _ProductDetailPageState extends State<ProductDetailPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('상품 상세'),
        backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //상품 이미지
            Image.network(
              widget.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            // 상품 정보 영역
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )
                  ),

                  SizedBox(height: 8),

                  //가격
                  Text(
                    widget.price,
                    style: TextStyle(
                      fontSize: 20,
                    )
                  ),

                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 16),

                  //설명
                  Text(
                    widget.desc,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5
                    )
                  )

                ]
              )
            )
          ],
        ),
      ),

    );
  }
}