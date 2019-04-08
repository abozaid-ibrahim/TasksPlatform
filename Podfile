
def rx_family()
	#common pods
	pod 'RxSwift',    '~> 4.4'
	pod 'RxCocoa',    '~> 4.4'
	pod 'RxDataSources', '~> 3.0'
	pod 'RxOptional', '~> 3.5.0'
	pod 'RxGesture', '~> 2.1'

end



def UI()
pod 'LiquidLoader'
pod 'SimpleCheckbox' 

end

target 'Mohsbaa' do
  use_frameworks!
rx_family
pod 'VHUD'
pod 'SimpleCheckbox' 

pod 'Sourcery'

    pod 'Firebase/Core'
pod 'Firebase/Database'

  target 'MohsbaaTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
