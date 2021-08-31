csrutil authenticated-root disable;
diskutil mount /Volumes/macOS\ Beta;
 Mount -uv /Volumes/macOS\ Beta;	
 cd /Volumes/macOS\ Beta/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/macOS\ Beta/System/Library/CoreServices --bootefi --create-snapshot;
Echo "This script from maclife.vn"
