import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';

class CustomGraphic extends StatelessWidget {
  const CustomGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 800,
        width: MediaQuery.of(context).size.width - 50,
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: const FlTitlesData(show: false),
            borderData: FlBorderData(
              show: false,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            minX: 0,
            lineBarsData: [
              LineChartBarData(
                spots: listTotal.asMap().entries.map((entry) {
                  return FlSpot(entry.key.toDouble(), entry.value);
                }).toList(),
                isCurved: true,
                color: Colors.green,
                dotData:
                    const FlDotData(show: false), // Mostrar pontos no gráfico
                belowBarData:
                    BarAreaData(show: false), // Área abaixo do gráfico
              ),
            ],
          ),
        ),
      ),
    );
  }
}
