class HomeViewController < UIViewController
  def viewDidLoad
    super
    scroll_frame = view.frame
    scroll = UIScrollView.alloc.initWithFrame:scroll_frame
    scroll.pagingEnabled = true
    scroll.contentSize = CGSizeMake(scroll_frame.width * 3, scroll_frame.height)

    3.times do |i|
      subframe = scroll_frame.right(scroll_frame.width * 1)

    end
  end

  def viewDidUnload
    super
    # Release any retained subviews of the main view.
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end
end
