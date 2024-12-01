import 'package:flutter/material.dart';
import 'package:venta/Constant/JobVacancyElement.dart';

class Alljobsvacancyelement extends StatelessWidget {
  const Alljobsvacancyelement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 200,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Jobvacancyelement(
                      company_logo: "lib/Asset/venta.png",
                      vacancy_title: "Ethics and Compliance Officer",
                      price: "500",
                      company: "Venta",
                      location: "Bakı",
                      created_at: "29.09.2024",
                    );
                },),
              );
  }
}