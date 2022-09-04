part of 'AboutWidgetsImports.dart';

class BuildAboutTeamData extends StatelessWidget {
  const BuildAboutTeamData({Key? key, required this.aboutUsData}) : super(key: key);
  final AboutUsData aboutUsData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: aboutUsData.teamModer.length,
        itemBuilder: (context,i)=> Container(
          padding: const EdgeInsets.only(bottom: 10),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1,
                    color: AppColors.primary
                  ),
              )
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primary,
                child: CustomText(
                  title: '${aboutUsData.teamModer[i].id}',
                  color: AppColors.white,
                  size: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20,),
              Column(
                children: [
                  CustomText(
                    title: '${aboutUsData.teamModer[i].name}',
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    title: '${aboutUsData.teamModer[i].email}',
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    title: '${aboutUsData.teamModer[i].phone}',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
