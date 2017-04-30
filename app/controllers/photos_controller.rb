class PhotosController <ApplicationController
  def show
    @photo = Photo.find(params[:id])

    render("photos/show.html.erb")
  end
  
  def destroy_row
    p = Photo.find(params[:id])
    p.destroy
    redirect_to("/photos")
  end
  def edit_form
    @photo_edit = Photo.find(params[:id])

    render('photos/edit_form.html.erb')
  end


  def create_row

    p = Photo.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    redirect_to("/photos")
  end

  def update_row
    p = Photo.find(params[:id])
    p.caption= params[:caption]
    p.source = params[:source]
    p.save
    redirect_to("/photos/:id")
  end

  def new_form

    render("photos/new_form.html.erb")
  end


  def index
    @list_of_photos = Photo.all

    render("photos/index.html.erb")
  end


end
