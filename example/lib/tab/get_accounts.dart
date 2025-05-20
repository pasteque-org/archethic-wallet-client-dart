import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class GetAccountsTab extends StatelessWidget {
  const GetAccountsTab({
    required this.aewalletClient,
    super.key,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  Widget build(final BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return FutureBuilder(
      future: aewalletClient.getAccounts(),
      builder: (final context, final snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (final success) {
              return ListView.builder(
                itemCount: success.accounts.length,
                itemBuilder: (final context, final index) {
                  return ListTile(
                    title: SelectableText(
                      '${Uri.decodeFull(success.accounts[index].serviceName)} (${success.accounts[index].shortName}): ${success.accounts[index].genesisAddress}',
                      style: textTheme.labelLarge,
                    ),
                  );
                },
              );
            },
            failure: (final failure) => Text('Request failed : $failure'),
          ),
        );
      },
    );
  }
}
