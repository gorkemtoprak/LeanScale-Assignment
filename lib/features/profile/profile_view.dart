import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/profile/profile_view_model.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';
import 'package:lean_scale_case/shared/custom_empty_view.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return model.userList.isEmpty
            ? const CustomEmptyView()
            : Scaffold(
                appBar: customAppBar('Profile'),
                backgroundColor: Constants.white,
                body: Padding(
                  padding: customPadding(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: CircleAvatar(
                              radius: screenWidth(context) * 0.11,
                              backgroundColor: Constants.white,
                              child: Image.network(
                                'https://media.istockphoto.com/vectors/default-avatar-photo-placeholder-icon-grey-profile-picture-business-vector-id1327592506?k=20&m=1327592506&s=612x612&w=0&h=hgMOPfz7H-CYP_CQ0wbv3IwRkbQna32xWUPoXtMyg5M=',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  model.userList[0].name ?? '',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                model.userList[0].email ?? '',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Constants.warmGreyTwo,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Veteran',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Constants.warmGreyTwo,
                                    ),
                                  ),
                                  Icon(
                                    Icons.flash_on_rounded,
                                    color: Constants.mainColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
