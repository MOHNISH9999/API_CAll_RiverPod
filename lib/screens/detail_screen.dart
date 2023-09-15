import 'package:api_call_riverpod/models/user_models.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.e});

  final UserModels e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _buildStyledText("Warehouse Number:", e.warehouseNumber),
              _buildStyledText("Warehouse Order:", e.warehouseOrder),
              _buildStyledText("Warehouse Task:", e.warehouseTask),
              _buildStyledText("Warehouse Task Item:", e.warehouseTaskItem),
              _buildStyledText("Batch:", e.batch),
              _buildStyledText("Delivery Item:", e.deliveryItem),
              _buildStyledText("Delivery Number:", e.deliveryNumber),
              _buildStyledText("Destination Bin:", e.destinationBin),
              _buildStyledText("Destination Hu:", e.destinationHu),
              _buildStyledText("Document Category:", e.documentCategory),
              _buildStyledText("Pack Material:", e.packMaterial),
              _buildStyledText("Product:", e.product),
              _buildStyledText("Product Text:", e.productText),
              _buildStyledText("Quantity:", e.quantity),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStyledText(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black, // You can choose your desired text color
            fontSize: 16.0, // Adjust the font size as needed
          ),
          children: [
            TextSpan(
              text: label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' ' + value,
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
