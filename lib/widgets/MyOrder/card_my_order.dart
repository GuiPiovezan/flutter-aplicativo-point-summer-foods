import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pointsf/widgets/export_widgets.dart';

class CardMyOrder extends StatelessWidget {
  final order;

  const CardMyOrder({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(25, 10, 10, 10),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: 3,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  style: BorderStyle.solid,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              // height: 125,
              child: TextButton(
                onPressed: () => showBarModalBottomSheet(
                  context: context,
                  builder: (context) => MyOrderModal(
                    // order: OrderModel(
                    //   id: order["id"],
                    //   userName: order["userName"],
                    //   userEmail: order["userEmail"],
                    //   userPhone: order["userPhone"],
                    //   address: order["address"],
                    //   valueTotal: order["valueTotal"],
                    //   valueDelivery: order["valueDelivery"],
                    //   dateOrder: order["dateOrder"],
                    //   typePayment: order.toString().contains("pagamento") ? order["typePayment"] : "",
                    //   cardFlag: order.toString().contains("bandeira") ? order["cardFlag"] : "",
                    //   cardPayment: order["cardPayment"],
                    //   moneyChange: order["moneyChange"],
                    //   itens: null,
                    // ),
                    order: order,
                  ),
                ),
                //order: OrderModel(
                //   id: order["id"],
                //   userName: order["userName"],
                //   userEmail: order["userEmail"],
                //   userPhone: order["userPhone"],
                //   address: order["address"],
                //   valueTotal: order["valueTotal"],
                //   valueDelivery: order["valueDelivery"],
                //   dateOrder: order["dateOrder"],
                //   typePayment: order.toString().contains("pagamento") ? order["typePayment"] : "",
                //   cardFlag: order.toString().contains("bandeira") ? order["cardFlag"] : "",
                //   cardPayment: order["cardPayment"],
                //   moneyChange: order["moneyChange"],
                //   itens: null,
                // ),
                // onPressed: () => print(order["uid"]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "id - ${order["uid"]}",
                            style: const TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateFormat("dd/MM/yy")
                                .format(order["data"].toDate()),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "R\$ ${order["valorTotalProdutos"]}",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${order["endereco"]}, ${order["numero"]}, ${order["bairro"]}",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_rounded,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              "10:00",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.restaurant,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              "10:15",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.delivery_dining,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              "10:30",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      color: const Color.fromARGB(255, 240, 240, 240),
    );
  }
}
