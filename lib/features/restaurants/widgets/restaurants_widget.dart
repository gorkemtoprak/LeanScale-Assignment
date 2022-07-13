import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import 'extra_information_widget.dart';

class RestaurantsWidget extends StatelessWidget {
  const RestaurantsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).pushNamed('/restaurantsDetail');
      },
      child: Container(
        height: screenHeight(context) / 5,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Constants.warmGrey,
            width: 2,
          ),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14.0),
              topRight: Radius.circular(14.0),
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            border: Border.all(
                              color: Constants.warmGrey,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Constants.mainColor,
                                size: 16,
                              ),
                              Text(
                                '4.2',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Constants.blackThree,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          splashRadius: 25,
                          icon: const Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: const Text(
                    'Nom Burger',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'Lorem ipsum dolor Loremaa',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const ExtraInformationWidget(
                iconData: Icons.timer_sharp,
                text: '30-45',
              ),
              const SizedBox(
                height: 5,
              ),
              const ExtraInformationWidget(
                iconData: Icons.attach_money_rounded,
                text: 'Min. \$${20}',
              ),
              const SizedBox(
                height: 5,
              ),
              const ExtraInformationWidget(
                iconData: Icons.delivery_dining,
                text: 'Delivery: \$${5.99}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
