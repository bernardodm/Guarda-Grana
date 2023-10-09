import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';

class CustomGraphic extends StatelessWidget {
  const CustomGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 300,
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: const FlTitlesData(show: true),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            minX: 0,
            maxX: activityValue.length.toDouble() - 1,
            minY: 0,
            maxY: 50,
            lineBarsData: [
              LineChartBarData(
                spots: activityValue.asMap().entries.map((entry) {
                  return FlSpot(entry.key.toDouble(), entry.value);
                }).toList(),
                isCurved: true,
                dotData:
                    const FlDotData(show: false), // Mostrar pontos no gráfico
                belowBarData:
                    BarAreaData(show: false), // Área abaixo do gráfico
              ),
            ],
          ),
        ));
  }
}
