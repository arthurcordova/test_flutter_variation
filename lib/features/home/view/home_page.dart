import 'package:arthur_test/features/home/controller/home_controller.dart';
import 'package:arthur_test/features/home/model/variation_item.dart';
import 'package:arthur_test/features/home/view/widget/item_list_variation_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = Get.find<HomeController>();

  HomePage({super.key}) {
    _controller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SafeArea(
          child: Obx(
        () => (_controller.variationItems.isNotEmpty)
            ? ListView(
                children: [
                  SizedBox(
                    height: 250,
                    child: SfCartesianChart(
                        // Initialize category axis
                        primaryXAxis: CategoryAxis(),
                        series: <LineSeries<VariationItem, int>>[
                          LineSeries<VariationItem, int>(
                              // Bind data source
                              dataSource: _controller.variationItems,
                              xValueMapper: (VariationItem sales, _) =>
                                  sales.day,
                              yValueMapper: (VariationItem sales, _) =>
                                  sales.price)
                        ]),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _controller.variationItems.length,
                    itemBuilder: (context, index) => ItemListVariationWidget(
                        _controller.variationItems[index]),
                  )
                ],
              )
            : Container(),
      )),
    );
  }
}
