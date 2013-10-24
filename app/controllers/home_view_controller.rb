class HomeViewController < UIViewController
  def viewDidLoad
    super
    scroll_frame = view.bounds

    scroll = UIScrollView.alloc.initWithFrame(scroll_frame)
    scroll.pagingEnabled = true
    scroll.contentSize = CGSizeMake(scroll_frame.width * 3, scroll_frame.height)

    3.times do |i|
      subframe = scroll_frame.right(scroll_frame.width * 1)
      subview = UIView.alloc.initWithFrame(subframe)
      subview.backgroundColor = [85,99,0].uicolor
      scroll << subview

      header_frame = subview.bounds.down(30).right(30).width(150).height(20)
      header_label.text = "This is page #{i + 1}."
      header_label.backgroundcolor = :clear.uicolor
      subview << header_label



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
