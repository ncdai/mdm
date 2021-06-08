csrutil authenticated-root disable;
diskutil mount /Volumes/NCDAI\ MBP\ External;
 Mount -uv /Volumes/NCDAI\ MBP\ External;	
 cd /Volumes/NCDAI\ MBP\ External/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/NCDAI\ MBP\ External/System/Library/CoreServices --bootefi --create-snapshot;
Echo "Copyright Maclife.vn"
