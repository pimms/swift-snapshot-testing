xcodebuild archive -project SnapshotTesting.xcodeproj -scheme SnapshotTesting_iOS -destination "generic/platform=iOS Simulator" -archivePath "archives/SnapshotTesting_iOS_Simulator"
xcodebuild archive -project SnapshotTesting.xcodeproj -scheme SnapshotTesting_iOS -destination "generic/platform=iOS" -archivePath "archives/SnapshotTesting_iOS"
xcodebuild archive -project SnapshotTesting.xcodeproj -scheme SnapshotTesting_tvOS -destination "generic/platform=tvOS Simulator" -archivePath "archives/SnapshotTesting_tvOS_Simulator"
xcodebuild archive -project SnapshotTesting.xcodeproj -scheme SnapshotTesting_tvOS -destination "generic/platform=tvOS" -archivePath "archives/SnapshotTesting_tvOS"

xcodebuild -create-xcframework \
    -archive archives/SnapshotTesting_iOS.xcarchive -framework SnapshotTesting.framework \
    -archive archives/SnapshotTesting_iOS_Simulator.xcarchive -framework SnapshotTesting.framework \
    -archive archives/SnapshotTesting_tvOS.xcarchive -framework SnapshotTesting.framework \
    -archive archives/SnapshotTesting_tvOS_Simulator.xcarchive -framework SnapshotTesting.framework \
    -output xcframework/SnapshotTesting.xcframework