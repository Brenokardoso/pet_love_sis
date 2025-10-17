import 'package:flutter/material.dart';

class TabelaBeneficios extends StatelessWidget {
  const TabelaBeneficios({super.key});

  @override
  Widget build(BuildContext context) {
    const celulaCheck = Icon(Icons.check, color: Color(0xFF4A2C1D));
    const celulaVazia = SizedBox.shrink();

    TableRow linha(String beneficio, List<bool> planos) {
      return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              beneficio,
              style: const TextStyle(color: Color(0xFF4A2C1D)),
            ),
          ),
          for (final ativo in planos)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ativo ? celulaCheck : celulaVazia),
            ),
        ],
      );
    }

    return Table(
      border: TableBorder.all(color: const Color(0xFF4A2C1D)),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        const TableRow(
          decoration: BoxDecoration(color: Color(0xFFECE0D1)),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Benefício',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Plano 1', textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Plano 2', textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Plano 3', textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Plano 4', textAlign: TextAlign.center),
            ),
          ],
        ),
        linha('Hospedagem (diária padrão)', [true, true, true, true]),
        linha('Alimentação conforme rotina do pet', [true, true, true, true]),
        linha('Banho a cada 3 dias', [false, true, true, true]),
        linha('Recreação monitorada', [false, false, true, true]),
        linha('Transporte incluso', [false, false, false, true]),
      ],
    );
  }
}
