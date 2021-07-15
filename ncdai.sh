csrutil authenticated-root disable;
diskutil mount /Volumes/NCDAI\ SanDisk\ SSD;
 Mount -uv /Volumes/NCDAI\ SanDisk\ SSD;	
 cd /Volumes/NCDAI\ SanDisk\ SSD/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/NCDAI\ SanDisk\ SSD/System/Library/CoreServices --bootefi --create-snapshot;
Echo "This script from maclife.vn"
