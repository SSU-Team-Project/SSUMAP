import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/layout/default_layout.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                'asset/icon/ssu/ssu.svg',
                height: 12,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            title: Text('Headline'),
            subtitle: Text('총학 행사'),
            trailing: Text('Today'),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.handyman_outlined)),
            title: Text('Headline'),
            subtitle: Text('단과대 행사'),
            trailing: Text('Yesterday'),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.palette_outlined)),
            title: Text('Headline'),
            subtitle: Text('학부 행사'),
            trailing: Text('2 days ago'),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Icon(Icons.campaign_outlined,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            title: Text('Headline'),
            subtitle: Text('공지 사항'),
            trailing: Text('3 days ago'),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.errorContainer,
              child: Icon(Icons.dangerous_outlined,
                  color: Theme.of(context).colorScheme.error),
            ),
            title: Text('Headline'),
            subtitle: Text('공지 사항 urgent'),
            trailing: Text('4 days ago'),
          ),
        ],
      ),
      title: '알림',
    );
  }
}
