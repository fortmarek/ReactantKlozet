# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
use_frameworks!

def testing_pods
  pod 'Cuckoo'
  pod 'Nimble'
  pod 'Quick'
end

target 'ReactantKlozet' do

  # Pods for ReactantKlozet
  pod 'Reactant/All-iOS'
  pod 'Reactant/ActivityIndicator'
  pod 'ReactantUI'
  pod 'ReactantLiveUI', :configuration => 'Debug'
  pod 'Fetcher'
  pod "Fetcher/RxFetcher"
  pod 'DataMapper'
  pod 'Kingfisher'

  target 'ReactantKlozetTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

  target 'ReactantKlozetUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
